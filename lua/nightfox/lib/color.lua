local util = require("nightfox.util")

--#region Types

---RGBA color representation stored in float [0,1]
---@class RGBA
---@field red number [0,255]
---@field green number [0,255]
---@field blue number [0,255]
---@field alpha number [0,1]

---@class HSL
---@field hue number Float [0,360)
---@field saturation number Float [0,100]
---@field lightness number Float [0,100]

---@class HSV
---@field hue number Float [0,360)
---@field saturation number Float [0,100]
---@field value number Float [0,100]

--#endregion

--#region Helpers

local function calc_hue(r, g, b)
  local max = math.max(r, g, b)
  local min = math.min(r, g, b)
  local delta = max - min
  local h = 0

  if max == min then
    h = 0
  elseif max == r then
    h = 60 * ((g - b) / delta)
  elseif max == g then
    h = 60 * ((b - r) / delta + 2)
  elseif max == b then
    h = 60 * ((r - g) / delta + 4)
  end

  if h < 0 then
    h = h + 360
  end

  return { hue = h, max = max, min = min, delta = delta }
end

--#endregion

---@class Color
---@field red number [0,1]
---@field green number [0,1]
---@field blue number [0,1]
---@field alpha number [0,1]
local Color = setmetatable({}, {})

---Initialize a new Color object
---@param r number Integer [0,1]
---@param g number Integer [0,1]
---@param b number Integer [0,1]
---@param a number Float [0,1]
function Color:init(r, g, b, a)
  self:set_red(r)
  self:set_green(g)
  self:set_blue(b)
  self:set_alpha(a)
end

---Create color from RGBA 0,255
---@param r number Integer [0,255]
---@param g number Integer [0,255]
---@param b number Integer [0,255]
---@param a number Float [0,1]
---@return Color
function Color.from_rgba(r, g, b, a)
  return Color.new(r / 0xff, g / 0xff, b / 0xff, a or 1)
end

---Create a color from a hex number
---@param c number|string Either a literal number or a css-style hex string ('#RRGGBB[AA]')
---@return Color
function Color.from_hex(c)
  local n = c
  if type(c) == "string" then
    local s = c:lower():match("#?([a-f0-9]+)")
    n = tonumber(s, 16)
    if #s <= 6 then
      n = bit.lshift(n, 8) + 0xff
    end
  end

  return Color.new(
    bit.rshift(n, 24) / 0xff,
    bit.band(bit.rshift(n, 16), 0xff) / 0xff,
    bit.band(bit.rshift(n, 8), 0xff) / 0xff,
    bit.band(n, 0xff) / 0xff
  )
end

---Create a Color from HSV value
---@param h number Hue. Float [0,360]
---@param s number Saturation. Float [0,100]
---@param v number Value. Float [0,100]
---@param a number (Optional) Alpha. Float [0,1]
---@return Color
function Color.from_hsv(h, s, v, a)
  h = h % 360
  s = util.clamp(s, 0, 100) / 100
  v = util.clamp(v, 0, 100) / 100
  a = util.clamp(a or 1, 0, 1)

  local function f(n)
    local k = (n + h / 60) % 6
    return v - v * s * math.max(math.min(k, 4 - k, 1), 0)
  end

  return Color.new(f(5), f(3), f(1), a)
end

---Create a Color from HSL value
---@param h number Hue. Float [0,360]
---@param s number Saturation. Float [0,100]
---@param l number Lightness. Float [0,100]
---@param a number (Optional) Alpha. Float [0,1]
---@return Color
function Color.from_hsl(h, s, l, a)
  h = h % 360
  s = util.clamp(s, 0, 100) / 100
  l = util.clamp(l, 0, 100) / 100
  a = util.clamp(a or 1, 0, 1)
  local _a = s * math.min(l, 1 - l)

  local function f(n)
    local k = (n + h / 30) % 12
    return l - _a * math.max(math.min(k - 3, 9 - k, 1), -1)
  end

  return Color.new(f(0), f(8), f(4), a)
end

---Convert Color to RGBA
---@return RGBA
function Color:to_rgba()
  return {
    red = util.round(self.red * 0xff),
    green = util.round(self.green * 0xff),
    blue = util.round(self.blue * 0xff),
    alpha = self.alpha,
  }
end

---Convert Color to HSV
---@return HSV
function Color:to_hsv()
  local res = calc_hue(self.red, self.green, self.blue)
  local h, min, max = res.hue, res.min, res.max
  local s, v = 0, max

  if max ~= 0 then
    s = (max - min) / max
  end

  return { hue = h, saturation = s * 100, value = v * 100 }
end

---Convert the color to HSL.
---@return HSL
function Color:to_hsl()
  local res = calc_hue(self.red, self.green, self.blue)
  local h, min, max = res.hue, res.min, res.max
  local s, l = 0, (max + min) / 2

  if max ~= 0 and min ~= 1 then
    s = (max - l) / math.min(l, 1 - l)
  end

  return { hue = h, saturation = s * 100, lightness = l * 100 }
end

---Convert the color to a hex number representation (`0xRRGGBB[AA]`).
---@param with_alpha boolean Include the alpha component.
---@return integer
function Color:to_hex(with_alpha)
  local n = bit.bor(bit.bor((self.blue * 0xff), bit.lshift((self.green * 0xff), 8)), bit.lshift((self.red * 0xff), 16))
  return with_alpha and bit.lshift(n, 8) + (self.alpha * 0xff) or n
end

---Convert the color to a css hex color (`#RRGGBB[AA]`).
---@param with_alpha boolean Include the alpha component.
---@return string
function Color:to_css(with_alpha)
  local n = self:to_hex(with_alpha)
  local l = with_alpha and 8 or 6
  return string.format("#%0" .. l .. "x", n)
end

---Returns a new color that a linear blend between two colors
---@param other Color
---@param f number Float [0,1]. 0 being this and 1 being other
---@return Color
function Color:blend(other, f)
  return Color.new(
    (other.red - self.red) * f + self.red,
    (other.green - self.green) * f + self.green,
    (other.blue - self.blue) * f + self.blue,
    self.alpha
  )
end

---Returns a new shaded color.
---@param f number Amount. Float [-1,1]. -1 is black, 1 is white
---@return Color
function Color:shade(f)
  local t = f < 0 and 0 or 1.0
  local p = f < 0 and f * -1.0 or f

  return Color.new(
    (t - self.red) * p + self.red,
    (t - self.green) * p + self.green,
    (t - self.blue) * p + self.blue,
    self.alpha
  )
end

---Adds value of `v` to the `value` of the current color. This returns either
---a brighter version if +v and darker if -v.
---@param v number Value. Float [-100,100].
---@return Color
function Color:brighten(v)
  local hsv = self:to_hsv()
  local value = util.clamp(hsv.value + v, 0, 100)
  return Color.from_hsv(hsv.hue, hsv.saturation, value)
end

---Adds value of `v` to the `lightness` of the current color. This returns
---either a lighter version if +v and darker if -v.
---@param v number Lightness. Float [-100,100].
---@return Color
function Color:lighten(v)
  local hsl = self:to_hsl()
  local lightness = util.clamp(hsl.lightness + v, 0, 100)
  return Color.from_hsl(hsl.hue, hsl.saturation, lightness)
end

---Adds value of `v` to the `saturation` of the current color. This returns
---either a more or less saturated version depending of +/- v.
---@param v number Saturation. Float [-100,100].
---@return Color
function Color:saturate(v)
  local hsv = self:to_hsv()
  local saturation = util.clamp(hsv.saturation + v, 0, 100)
  return Color.from_hsv(hsv.hue, saturation, hsv.value)
end

---Adds value of `v` to the `hue` of the current color. This returns a shift of
---hue based on +/- of v. Resulting `hue` is clamped [0,360]
---@return Color
function Color:shift(v)
  local hsv = self:to_hsv()
  local hue = (hsv.hue + v) % 360
  return Color.from_hsv(hue, hsv.saturation, hsv.value)
end

---@param v number Float [0,1].
function Color:set_red(v)
  self._red = util.clamp(v or 1.0, 0, 1)
end

---@param v number Float [0,1].
function Color:set_green(v)
  self._green = util.clamp(v or 1.0, 0, 1)
end

---@param v number Float [0,1].
function Color:set_blue(v)
  self._blue = util.clamp(v or 1.0, 0, 1)
end

---@param v number Float [0,1].
function Color:set_alpha(v)
  self._alpha = util.clamp(v or 1.0, 0, 1)
end

---@param v number Hue. Float [0,360].
function Color:set_hue(v)
  local hsv = self:to_hsv()
  hsv.hue = v % 360
  local c = Color.from_hsv(hsv.hue, hsv.saturation, hsv.value)
  self._red = c.red
  self._green = c.green
  self._blue = c.blue
end

---@param v number saturation. Float [0,100]
function Color:set_saturation(v)
  local hsv = self:to_hsv()
  hsv.saturation = util.clamp(v, 0, 100)
  local c = Color.from_hsv(hsv.hue, hsv.saturation, hsv.value)
  self._red = c.red
  self._green = c.green
  self._blue = c.blue
end

---@param v number Value. Float [0,100]
function Color:set_value(v)
  local hsv = self:to_hsv()
  hsv.value = util.clamp(v, 0, 100)
  local c = Color.from_hsv(hsv.hue, hsv.saturation, hsv.value)
  self._red = c.red
  self._green = c.green
  self._blue = c.blue
end

---@param v number Value. Float [0,100]
function Color:set_lightness(v)
  local hsl = self:to_hsl()
  hsl.value = util.clamp(v, 0, 100)
  local c = Color.from_hsv(hsl.hue, hsl.saturation, hsl.lightness)
  self._red = c.red
  self._green = c.green
  self._blue = c.blue
end

---Copy the values from another color.
---@param c Color
function Color:set_from_color(c)
  self._red = c.red
  self._green = c.green
  self._blue = c.blue
  self._alpha = c.alpha
end

-- stylua: ignore start
local getters = {
  red   = function(self) return self._red end,
  green = function(self) return self._green end,
  blue  = function(self) return self._blue end,
  alpha = function(self) return self._alpha end,
  hue = function (self) return self:to_hsv().hue end,
  saturation = function (self) return self:to_hsv().saturation end,
  value = function (self) return self:to_hsv().value end,
  lightness = function (self) return self:to_hsl().lightness end,
}

local setters = {
  red   = function(self, v) self:set_red(v) end,
  green = function(self, v) self:set_green(v) end,
  blue  = function(self, v) self:set_blue(v) end,
  alpha = function(self, v) self:set_alpha(v) end,
  hue = function(self, v) self:set_hue(v) end,
  saturation = function(self, v) self:set_saturation(v) end,
  value = function(self, v) self:set_value(v) end,
  lightness = function(self, v) self:set_lightness(v) end,
}
-- stylua: ignore end

function Color.__index(self, k)
  if getters[k] then
    return getters[k](self)
  end
  return Color[k]
end

function Color.__newindex(self, k, v)
  if setters[k] then
    setters[k](self, v)
  else
    rawset(self, k, v)
  end
end

function Color.__tostring(self)
  return self:to_css()
end

function Color.new(...)
  local this = setmetatable({}, Color)
  this:init(...)
  return this
end

Color.WHITE = Color.from_hex(0xffffffff)
Color.BLACK = Color.from_hex(0x00000000)

return Color
