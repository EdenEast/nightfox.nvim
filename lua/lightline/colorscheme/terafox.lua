local Color = require("nightfox.lib.color")
local spec = require("nightfox.spec").load("terafox")

local pal = spec.palette
local bg = Color.from_hex(spec.bg0)
local fg = spec.fg2

local function generate_mode(color, amount)
  amount = amount or 0.3
  local fade = bg:blend(Color.from_hex(color), amount):to_css()
  local b = bg:to_css()

  return {
    left = { { b, color }, { fg, fade } },
    right = { { fg, fade } },
    middle = { { fg, b } },
  }
end

-- stylua: ignore
local nightfox = {
  normal   = generate_mode(pal.blue.base),
  insert   = generate_mode(pal.green.base),
  command  = generate_mode(pal.yellow.base),
  visual   = generate_mode(pal.magenta.base),
  replace  = generate_mode(pal.red.base),
  inactive = generate_mode(spec.fg3),
  tabline  = generate_mode(spec.fg3),
}

return nightfox

