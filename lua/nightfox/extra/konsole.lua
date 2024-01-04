local template = require("nightfox.util.template")
local Color = require("nightfox.lib.color")

local M = {}

local function conv(color)
  local c = Color.from_hex(color)
  local rgb = c:to_rgba()
  return string.format([[%s,%s,%s]], rgb.red, rgb.green, rgb.blue)
end

local function conv_shade(shade)
  return {
    base = conv(shade.base),
    bright = conv(shade.bright),
    dim = conv(shade.dim),
  }
end

function M.generate(spec, _)
  local colors = {
    black = conv_shade(spec.palette.black),
    red = conv_shade(spec.palette.red),
    green = conv_shade(spec.palette.green),
    yellow = conv_shade(spec.palette.yellow),
    blue = conv_shade(spec.palette.blue),
    magenta = conv_shade(spec.palette.magenta),
    cyan = conv_shade(spec.palette.cyan),
    white = conv_shade(spec.palette.white),
    bg1 = conv(spec.bg1),
    bg0 = conv(spec.bg0),
    bg3 = conv(spec.bg3),
    fg0 = conv(spec.fg0),
    fg1 = conv(spec.fg1),
    fg2 = conv(spec.fg2),
  }

  local content = [[
[Background]
Color=${bg1}

[BackgroundFaint]
Color=${bg0}

[BackgroundIntense]
Color=${bg3}

[Color0]
Color=${black}

[Color0Faint]
Color=${black.dim}

[Color0Intense]
Color=${black.bright}

[Color1]
Color=${red}

[Color1Faint]
Color=${red.dim}

[Color1Intense]
Color=${red.bright}

[Color2]
Color=${green}

[Color2Faint]
Color=${green.dim}

[Color2Intense]
Color=${green.bright}

[Color3]
Color=${yellow}

[Color3Faint]
Color=${yellow.dim}

[Color3Intense]
Color=${yellow.bright}

[Color4]
Color=${blue}

[Color4Faint]
Color=${blue.dim}

[Color4Intense]
Color=${blue.bright}

[Color5]
Color=${magenta}

[Color5Faint]
Color=${magenta.dim}

[Color5Intense]
Color=${magenta.bright}

[Color6]
Color=${cyan}

[Color6Faint]
Color=${cyan.dim}

[Color6Intense]
Color=${cyan.bright}

[Color7]
Color=${white}

[Color7Faint]
Color=${white.dim}

[Color7Intense]
Color=${white.bright}

[Foreground]
Color=${fg1}

[ForegroundFaint]
Color=${fg2}

[ForegroundIntense]
Color=${fg0}

[General]
Blur=false
ColorRandomization=false
Description=Nightfox
Opacity=1
]]

  return template.parse_template_str(content, colors)
end

return M
