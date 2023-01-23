local bop = bit or bit32 or require("nightfox.lib.vim.bit")
local fmt = string.format

local linear_rgb_to_lms = {
  { 0.17882, 0.43516, 0.04119 },
  { 0.03456, 0.27155, 0.03867 },
  { 0.00030, 0.00184, 0.01466 },
}

local lms_to_linear_rgb = {
  { 8.09444, -13.05043, 11.67206 },
  { -1.02485, 5.40193, -11.36147 },
  { -0.03653, -0.41216, 69.35132 },
}

---Convert color hex string to srgb value [0-255]
---@param str string
---@return table
local function from_str(str)
  local s = str:lower():match("#?([a-f0-9]+)")
  local n = tonumber(s, 16)
  return {
    bop.band(bop.rshift(n, 16), 0xff),
    bop.band(bop.rshift(n, 8), 0xff),
    bop.band(n, 0xff),
  }
end

local function to_str(c)
  return fmt("#%02x%02x%02x", c[1], c[2], c[3])
end

local function round_uint8(n)
  return math.max(math.min(math.floor(n + 0.5), 0xff), 0)
end

local function clamp(v, min, max)
  min, max = min or 0, max or 1
  return math.max(math.min(v, max), min)
end

local function apply(t, f)
  local r = {}
  for i = 1, #t do
    r[i] = f(t[i])
  end
  return r
end

local function mul(c, m)
  return {
    m[1][1] * c[1] + m[1][2] * c[2] + m[1][3] * c[3],
    m[2][1] * c[1] + m[2][2] * c[2] + m[2][3] * c[3],
    m[3][1] * c[1] + m[3][2] * c[2] + m[3][3] * c[3],
  }
end

-- stylua: ignore
local function srgb_to_lrgb(c)
  return apply(c, function(x)
      x = x / 0xff
      if x <= 0 then return 0 end
      if x >= 1 then return 1 end
      if x < 0.04045 then return x / 12.92 end
      return math.pow((x + 0.055) / 1.055, 2.4)
    end
  )
end

-- stylua: ignore
local function lrgb_to_srgb(c)
  return apply(c, function(a)
    local f = function(x)
      if x <= 0 then return 0 end
      if x >= 1 then return 1 end
      if x < 0.0031308 then return x * 12.92 end
      return math.pow(x, 1.0 / 2.4) * 1.055 - 0.055
    end
    return round_uint8(f(a) * 0xff)
  end)
end

local function lms_to_lrgb(lms)
  return mul(lms, lms_to_linear_rgb)
end

local function lrgb_to_lms(lrgb)
  return mul(lrgb, linear_rgb_to_lms)
end

local function apply_protan(lms, severity)
  -- Viénot 1999.
  lms[1] = (1 - severity) * lms[1] + severity * (2.02344 * lms[2] - 2.52580 * lms[3])
end

local function apply_deutan(lms, severity)
  -- Viénot 1999.
  lms[2] = (1 - severity) * lms[2] + severity * (0.49421 * lms[1] + 1.24827 * lms[3])
end

local function apply_tritan(lms, severity)
  -- Brettel 1997.
  -- Check which plane.
  if (lms[1] * 0.34478 - lms[2] * 0.65518) >= 0 then
    -- Plane 1 for tritanopia
    lms[3] = (1 - severity) * lms[3] + severity * (-0.00257 * lms[1] + 0.05366 * lms[2])
  else
    -- Plane 2 for tritanopia
    lms[3] = (1 - severity) * lms[3] + severity * (-0.06011 * lms[1] + 0.16299 * lms[2])
  end
end

local function simulate(lms, kinds)
  kinds = kinds or {}
  local x = { lms[1], lms[2], lms[3] }

  -- stylua: ignore start
  if kinds.protan and kinds.protan > 0 then apply_protan(x, clamp(kinds.protan)) end
  if kinds.deutan and kinds.deutan > 0 then apply_deutan(x, clamp(kinds.deutan)) end
  if kinds.tritan and kinds.tritan > 0 then apply_tritan(x, clamp(kinds.tritan)) end
  -- stylua: ignore end

  return x
end

local function apply_difference_lrgb(orig_lrgb, sim_lrgb)
  -- [0.0, 0.0, 0.0]
  -- [0.7, 1.0, 0.0]
  -- [0.7, 0.0, 1.0]

  local e = {
    orig_lrgb[1] - sim_lrgb[1],
    orig_lrgb[2] - sim_lrgb[2],
    orig_lrgb[3] - sim_lrgb[3],
  }

  return {
    orig_lrgb[1],
    orig_lrgb[2] + 0.7 * e[1] + 1 * e[2] + 0 * e[3],
    orig_lrgb[3] + 0.7 * e[1] + 0 * e[2] + 1 * e[3],
  }
end

local M = {}

---@class CBKinds
---@field protan number [0-1]
---@field deutan number [0-1]
---@field tritan number [0-1]

---Simulate colorblindness based on the different severities
---@param color string hex color
---@param opts CBKinds
function M.simulate(color, opts)
  local lms = lrgb_to_lms(srgb_to_lrgb(from_str(color)))
  local sim = simulate(lms, opts)
  return to_str(lrgb_to_srgb(lms_to_lrgb(sim)))
end

---Apply Dantonize algorithm
---@param color string hex color
---@param opts CBKinds
function M.daltonize(color, opts)
  local lrgb = srgb_to_lrgb(from_str(color))
  local lms = lrgb_to_lms(lrgb)
  local sim = lms_to_lrgb(simulate(lms, opts))
  -- P({ color = color, lrgb = lrgb_to_srgb(lrgb), sim = lrgb_to_srgb(sim) })
  local diff = apply_difference_lrgb(lrgb, sim)
  return to_str(lrgb_to_srgb(diff))
end

-- Keeping This here as by test case and what I was supposed to get
--
-- local srgb = from_str("#63cdcf")
-- print(fmt(" srgb: r = %s, g = %s, b = %s", srgb[1], srgb[2], srgb[3]))
-- local lrgb = srgb_to_lrgb(srgb)
-- print(fmt(" lrgb: r = %s, g = %s, b = %s", lrgb[1], lrgb[2], lrgb[3]))
-- local lms = lrgb_to_lms(lrgb)
-- print(fmt("  lms: l = %s, m = %s, s = %s", lms[1], lms[2], lms[3]))
-- local sim = simulate(lms, { protan = 1 })
-- print(fmt("  sim: l = %s, m = %s, s = %s", sim[1], sim[2], sim[3]))
-- local slrgb = lms_to_lrgb(sim)
-- print(fmt("slrgb: r = %s, g = %s, b = %s", slrgb[1], slrgb[2], slrgb[3]))
-- local dlrgb = apply_difference_lrgb(lrgb, slrgb)
-- print(fmt("dlrgb: r = %s, g = %s, b = %s", dlrgb[1], dlrgb[2], dlrgb[3]))
-- print(to_str(lrgb_to_srgb(dlrgb)))
--
-- Expected values
--  srgb: r = 99, g = 205, b = 207
--  lrgb: r = 0.124772, g = 0.610496, b = 0.623960
--   lms: l = 0.313676, m = 0.194221, s = 0.010314
--   sim: l = 0.366942, m = 0.194221, s = 0.010314
-- slrgb: r = 0.555917, g = 0.555921, b = 0.621852
-- dlrgb: r = 0.124772, g = 0.363269, b = 0.324267

return M

-- References:
-- HUGE thanks to Nicolas Burrus and his DaltonLens project and website. This has been an
-- invaluable resource in trying to understand colorblindness and cvd. His posts on understanding
-- lms based cvd simulators helped make this topic comprehensible.
-- https://daltonlens.org/
-- https://daltonlens.org/understanding-cvd-simulation/
-- https://github.com/DaltonLens/DaltonLens-Python
-- https://github.com/DaltonLens/DaltonLens
