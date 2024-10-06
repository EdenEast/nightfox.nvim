-- NOTE: Code here ported from:
-- https://bottosson.github.io/posts/oklab/
-- https://bottosson.github.io/posts/gamutclipping/
-- https://bottosson.github.io/posts/colorpicker/

local M = {}

---Compute a component of RGB in [0,1] from it's gamma-expanded linear version.
---k
---@return number Float [0,1]
local function srgb_transfer_function(c)
  return (c >= 0.0031308) and (1.055 * c ^ (1.0 / 2.4) - 0.055) or (12.92 * c)
end

---Convert a component of RGB in [0,1] to it's gamma-expanded linear version.
---@return number Float [0,1]
local function srgb_transfer_function_inv(c)
  return (c > 0.04045) and ((c + 0.055) / 1.055) ^ 2.4 or (c / 12.92)
end

function M.linear_to_srgb(r, g, b)
  return srgb_transfer_function(r), --
    srgb_transfer_function(g),
    srgb_transfer_function(b)
end

function M.srgb_to_linear(r, g, b)
  return srgb_transfer_function_inv(r), --
    srgb_transfer_function_inv(g),
    srgb_transfer_function_inv(b)
end

local function linear_srgb_to_oklab(r, g, b)
  local l = (0.4122214708 * r + 0.5363325363 * g + 0.0514459929 * b) ^ (1 / 3)
  local m = (0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b) ^ (1 / 3)
  local s = (0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b) ^ (1 / 3)

  return 0.2104542553 * l + 0.7936177850 * m - 0.0040720468 * s,
    1.9779984951 * l - 2.4285922050 * m + 0.4505937099 * s,
    0.0259040371 * l + 0.7827717662 * m - 0.8086757660 * s
end

local function oklab_to_linear_srgb(L, a, b)
  local l = (L + 0.3963377774 * a + 0.2158037573 * b) ^ 3
  local m = (L - 0.1055613458 * a - 0.0638541728 * b) ^ 3
  local s = (L - 0.0894841775 * a - 1.2914855480 * b) ^ 3

  return 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
    -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
    -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
end

function M.srgb_to_oklab(r, g, b)
  return linear_srgb_to_oklab(M.srgb_to_linear(r, g, b))
end

function M.oklab_to_srgb(L, a, b)
  return M.linear_to_srgb(oklab_to_linear_srgb(L, a, b))
end

--#region Intersection with srgb gamut

-- Finds the maximum saturation possible for a given hue that fits in sRGB
-- Saturation here is defined as S = C/L
-- a and b must be normalized so a^2 + b^2 == 1
local function compute_max_saturation(a, b)
  -- Max saturation will be when one of r, g or b goes below zero.

  -- Select different coefficients depending on which component goes below
  -- zero first
  local k0, k1, k2, k3, k4, wl, wm, ws

  if -1.88170328 * a - 0.80936493 * b > 1 then
    -- Red component
    k0 = 1.19086277
    k1 = 1.76576728
    k2 = 0.59662641
    k3 = 0.75515197
    k4 = 0.56771245
    wl, wm, ws = 4.0767416621, -3.3077115913, 0.2309699292
  elseif 1.81444104 * a - 1.19445276 * b > 1 then
    -- Green component
    k0 = 0.73956515
    k1 = -0.45954404
    k2 = 0.08285427
    k3 = 0.12541070
    k4 = 0.14503204
    wl, wm, ws = -1.2684380046, 2.6097574011, -0.3413193965
  else
    -- Blue component
    k0 = 1.35733652
    k1 = -0.00915799
    k2 = -1.15130210
    k3 = -0.50559606
    k4 = 0.00692167
    wl, wm, ws = -0.0041960863, -0.7034186147, 1.7076147010
  end

  -- Approximate max saturation using a polynomial:
  local S = k0 + k1 * a + k2 * b + k3 * a * a + k4 * a * b

  -- Do one step Halley's method to get closer
  -- this gives an error less than 10e6, except for some blue hues where the
  -- dS/dh is close to infinite this should be sufficient for most
  -- applications, otherwise do two/three steps

  local k_l = 0.3963377774 * a + 0.2158037573 * b
  local k_m = -0.1055613458 * a - 0.0638541728 * b
  local k_s = -0.0894841775 * a - 1.2914855480 * b

  local l_ = 1 + S * k_l
  local m_ = 1 + S * k_m
  local s_ = 1 + S * k_s

  local l = l_ * l_ * l_
  local m = m_ * m_ * m_
  local s = s_ * s_ * s_

  local l_dS = 3 * k_l * l_ * l_
  local m_dS = 3 * k_m * m_ * m_
  local s_dS = 3 * k_s * s_ * s_

  local l_dS2 = 6 * k_l * k_l * l_
  local m_dS2 = 6 * k_m * k_m * m_
  local s_dS2 = 6 * k_s * k_s * s_

  local f = wl * l + wm * m + ws * s
  local f1 = wl * l_dS + wm * m_dS + ws * s_dS
  local f2 = wl * l_dS2 + wm * m_dS2 + ws * s_dS2

  S = S - f * f1 / (f1 * f1 - 0.5 * f * f2)

  return S
end

-- finds L_cusp and C_cusp for a given hue
-- a and b must be normalized so a^2 + b^2 == 1
local function find_cusp(a, b)
  -- First, find the maximum saturation (saturation S = C/L)
  local S_cusp = compute_max_saturation(a, b)

  -- Convert to linear sRGB to find the first point where at least one
  -- of r,g or b >= 1:
  local r_at_max, g_at_max, b_at_max = oklab_to_linear_srgb(1, S_cusp * a, S_cusp * b)
  local L_cusp = (1 / math.max(math.max(r_at_max, g_at_max), b_at_max)) ^ (1 / 3)
  local C_cusp = L_cusp * S_cusp

  return L_cusp, C_cusp
end

-- Finds intersection of the line defined by
-- L = L0 * (1 - t) + t * L1;
-- C = t * C1;
-- a and b must be normalized so a^2 + b^2 == 1
local function find_gamut_intersection(a, b, L1, C1, L0, cusp_L, cusp_C)
  if cusp_L == nil and cusp_C == nil then
    -- Find the cusp of the gamut triangle
    cusp_L, cusp_C = find_cusp(a, b)
  else
    assert(cusp_L ~= nil, cusp_C ~= nil)
  end

  -- Find the intersection for upper and lower half seprately
  local t
  if ((L1 - L0) * cusp_C - (cusp_L - L0) * C1) <= 0 then
    -- Lower half

    t = cusp_C * L0 / (C1 * cusp_L + cusp_C * (L0 - L1))
  else
    -- Upper half

    -- First intersect with triangle
    t = cusp_C * (L0 - 1.) / (C1 * (cusp_L - 1.) + cusp_C * (L0 - L1))

    -- Then one step Halley's method
    do
      local dL = L1 - L0
      local dC = C1

      local k_l = 0.3963377774 * a + 0.2158037573 * b
      local k_m = -0.1055613458 * a - 0.0638541728 * b
      local k_s = -0.0894841775 * a - 1.2914855480 * b

      local l_dt = dL + dC * k_l
      local m_dt = dL + dC * k_m
      local s_dt = dL + dC * k_s

      -- If higher accuracy is required, 2 or 3 iterations of the following block can be used:
      do
        local L = L0 * (1. - t) + t * L1
        local C = t * C1

        local l_ = L + C * k_l
        local m_ = L + C * k_m
        local s_ = L + C * k_s

        local l = l_ * l_ * l_
        local m = m_ * m_ * m_
        local s = s_ * s_ * s_

        local ldt = 3 * l_dt * l_ * l_
        local mdt = 3 * m_dt * m_ * m_
        local sdt = 3 * s_dt * s_ * s_

        local ldt2 = 6 * l_dt * l_dt * l_
        local mdt2 = 6 * m_dt * m_dt * m_
        local sdt2 = 6 * s_dt * s_dt * s_

        local r = 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s - 1
        local r1 = 4.0767416621 * ldt - 3.3077115913 * mdt + 0.2309699292 * sdt
        local r2 = 4.0767416621 * ldt2 - 3.3077115913 * mdt2 + 0.2309699292 * sdt2

        local u_r = r1 / (r1 * r1 - 0.5 * r * r2)
        local t_r = -r * u_r

        local g = -1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s - 1
        local g1 = -1.2684380046 * ldt + 2.6097574011 * mdt - 0.3413193965 * sdt
        local g2 = -1.2684380046 * ldt2 + 2.6097574011 * mdt2 - 0.3413193965 * sdt2

        local u_g = g1 / (g1 * g1 - 0.5 * g * g2)
        local t_g = -g * u_g

        local b_ = -0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s - 1
        local b1 = -0.0041960863 * ldt - 0.7034186147 * mdt + 1.7076147010 * sdt
        local b2 = -0.0041960863 * ldt2 - 0.7034186147 * mdt2 + 1.7076147010 * sdt2

        local u_b = b1 / (b1 * b1 - 0.5 * b_ * b2)
        local t_b = -b_ * u_b

        t_r = (u_r >= 0) and t_r or math.huge
        t_g = (u_g >= 0) and t_g or math.huge
        t_b = (u_b >= 0) and t_b or math.huge

        t = t + math.min(t_r, math.min(t_g, t_b))

        assert(t == t, "detected nan")
        assert(t ~= math.huge)
      end
    end
  end

  return t
end

--#endregion

--#region Common code

-- toe function for L_r
local function toe(x)
  local k_1 = 0.206
  local k_2 = 0.03
  local k_3 = (1 + k_1) / (1 + k_2)
  return 0.5 * (k_3 * x - k_1 + (((k_3 * x - k_1) * (k_3 * x - k_1) + 4 * k_2 * k_3 * x) ^ (1 / 2)))
end

-- inverse toe function for L_r
local function toe_inv(x)
  local k_1 = 0.206
  local k_2 = 0.03
  local k_3 = (1 + k_1) / (1 + k_2)
  return (x * x + k_1 * x) / (k_3 * (x + k_2))
end

local function to_ST(cusp_L, cusp_C)
  return (cusp_C / cusp_L), (cusp_C / (1 - cusp_L))
end

--#endregion

--#region HSV
-- This code converts between OkLab and Okhsv

function M.okhsv_to_oklab(h, s, v)
  local a_ = math.cos(2 * math.pi * h)
  local b_ = math.sin(2 * math.pi * h)

  local cusp_L, cusp_C = find_cusp(a_, b_)
  local S_max, T_max = to_ST(cusp_L, cusp_C)
  local S_0 = 0.5
  local k = 1 - S_0 / S_max

  -- first we compute L and V as if the gamut is a perfect triangle:

  -- L, C when v==1:
  local L_v = 1 - s * S_0 / (S_0 + T_max - T_max * k * s)
  local C_v = s * T_max * S_0 / (S_0 + T_max - T_max * k * s)

  local L = v * L_v
  local C = v * C_v

  -- then we compensate for both toe and the curved top part of the triangle:
  local L_vt = toe_inv(L_v)
  local C_vt = C_v * L_vt / L_v

  local L_new = toe_inv(L)
  C = C * L_new / L
  L = L_new

  local scale_r, scale_g, scale_b = oklab_to_linear_srgb(L_vt, a_ * C_vt, b_ * C_vt)
  local scale_L = (1 / math.max(scale_r, scale_g, scale_b, 0)) ^ (1 / 3)

  L = L * scale_L
  C = C * scale_L

  return L, C * a_, C * b_
end

function M.oklab_to_okhsv(L, a, b)
  local C = (a * a + b * b) ^ (1 / 2)
  local a_ = a / C
  local b_ = b / C

  local h = 0.5 + 0.5 * math.atan2(-b, -a) / math.pi

  local cusp_L, cusp_C = find_cusp(a_, b_)
  local S_max, T_max = to_ST(cusp_L, cusp_C)
  local S_0 = 0.5
  local k = 1 - S_0 / S_max

  -- first we find L_v, C_v, L_vt and C_vt

  local t = T_max / (C + L * T_max)
  local L_v = t * L
  local C_v = t * C

  local L_vt = toe_inv(L_v)
  local C_vt = C_v * L_vt / L_v

  -- we can then use these to invert the step that compensates for the toe and the curved top part of the triangle:
  local scale_r, scale_g, scale_b = oklab_to_linear_srgb(L_vt, a_ * C_vt, b_ * C_vt)
  local scale_L = (1 / math.max(scale_r, scale_g, scale_b, 0)) ^ (1 / 3)

  L = L / scale_L
  C = C / scale_L

  C = C * toe(L) / L
  L = toe(L)

  -- we can now compute v and s:

  local v = L / L_v
  local s = (S_0 + T_max) * C_v / ((T_max * S_0) + T_max * k * C_v)

  return h, s, v
end

--#endregion

--#region HSL
-- This code converts between OkLab and Okhsl.

--- Returns a smooth approximation of the location of the cusp
--- This polynomial was created by an optimization process
--- It has been designed so that S_mid < S_max and T_mid < T_max
local function get_ST_mid(a_, b_)
  local S = 0.11516993
    + 1
      / (7.44778970 + 4.15901240 * b_ + a_ * (-2.19557347 + 1.75198401 * b_ + a_ * (-2.13704948 - 10.02301043 * b_ + a_ * (-4.24894561 + 5.38770819 * b_ + 4.69891013 * a_))))

  local T = 0.11239642
    + 1
      / (1.61320320 - 0.68124379 * b_ + a_ * (0.40370612 + 0.90148123 * b_ + a_ * (-0.27087943 + 0.61223990 * b_ + a_ * (0.00299215 - 0.45399568 * b_ - 0.14661872 * a_))))

  return S, T
end

local function get_Cs(L, a_, b_)
  local cusp_L, cusp_C = find_cusp(a_, b_)

  -- TODO: review this for correctness
  local C_max = find_gamut_intersection(a_, b_, L, 1, L, cusp_L, cusp_C)
  local S_max, T_max = to_ST(cusp_L, cusp_C)

  -- Scale factor to compensate for the curved part of gamut shape:
  local k = C_max / math.min((L * S_max), (1 - L) * T_max)

  local C_mid
  do
    local S_mid, T_mid = get_ST_mid(a_, b_)

    -- Use a soft minimum function, instead of a sharp triangle shape to get a
    -- smooth value for chroma.
    local C_a = L * S_mid
    local C_b = (1 - L) * T_mid
    C_mid = 0.9 * k * ((1 / (1 / (C_a * C_a * C_a * C_a) + 1 / (C_b * C_b * C_b * C_b))) ^ (1 / 2)) ^ (1 / 2)
  end

  local C_0
  do
    -- for C_0, the shape is independent of hue, so ST are constant. Values
    -- picked to roughly be the average values of ST.
    local C_a = L * 0.4
    local C_b = (1 - L) * 0.8

    -- Use a soft minimum function, instead of a sharp triangle shape to get a
    -- smooth value for chroma.
    C_0 = (1 / (1 / (C_a * C_a) + 1 / (C_b * C_b))) ^ (1 / 2)
  end

  return C_0, C_mid, C_max
end

function M.okhsl_to_oklab(h, s, l)
  if l == 1 then
    return 1, 1, 1
  elseif l == 0 then
    return 0, 0, 0
  end

  local a_ = math.cos(2 * math.pi * h)
  local b_ = math.sin(2 * math.pi * h)
  local L = toe_inv(l)

  local C_0, C_mid, C_max = get_Cs(L, a_, b_)

  -- Interpolate the three values for C so that:
  -- At s=0: dC/ds = C_0, C=0
  -- At s=0.8: C=C_mid
  -- At s=1.0: C=C_max

  local mid = 0.8
  local mid_inv = 1.25

  local C, t, k_0, k_1, k_2

  if s < mid then
    t = mid_inv * s

    k_1 = mid * C_0
    k_2 = (1 - k_1 / C_mid)

    C = t * k_1 / (1 - k_2 * t)
  else
    t = (s - mid) / (1 - mid)

    k_0 = C_mid
    k_1 = (1 - mid) * C_mid * C_mid * mid_inv * mid_inv / C_0
    k_2 = (1 - k_1 / (C_max - C_mid))

    C = k_0 + t * k_1 / (1 - k_2 * t)
  end

  return L, C * a_, C * b_
end

function M.oklab_to_okhsl(L, a, b)
  local C = (a * a + b * b) ^ (1 / 2)
  local a_ = a / C
  local b_ = b / C

  local h = 0.5 + 0.5 * math.atan2(-b, -a) / math.pi

  local C_0, C_mid, C_max = get_Cs(L, a_, b_)

  -- Inverse of the interpolation in okhsl_to_srgb:

  local mid = 0.8
  local mid_inv = 1.25

  local s
  if C < C_mid then
    local k_1 = mid * C_0
    local k_2 = (1 - k_1 / C_mid)

    local t = C / (k_1 + k_2 * C)
    s = t * mid
  else
    local k_0 = C_mid
    local k_1 = (1 - mid) * C_mid * C_mid * mid_inv * mid_inv / C_0
    local k_2 = (1 - k_1 / (C_max - C_mid))

    local t = (C - k_0) / (k_1 + k_2 * (C - k_0))
    s = mid + (1 - mid) * t
  end

  local l = toe(L)
  return h, s, l
end

--#endregion

return M
