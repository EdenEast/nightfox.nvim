local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local konsoleColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      vim.api.nvim_command('echohl WarningMsg | echom "Nightfox: ' .. v .. '" | echohl NONE')
      -- Konsole does not use the format `#` for hex colors it uses `r,g,b`
      konsoleColors[k] = util.hex_to_rgb(v)
    end
  end

  local konsole = util.template(
    [[
[Background]
Color=${bg}

[BackgroundFaint]
Color=${bg_alt}

[BackgroundIntense]
Color=${bg_highlight}

[Color0]
Color=${black}

[Color0Faint]
Color=${black_dm}

[Color0Intense]
Color=${black_br}

[Color1]
Color=${red}

[Color1Faint]
Color=${red_dm}

[Color1Intense]
Color=${red_br}

[Color2]
Color=${green}

[Color2Faint]
Color=${green_dm}

[Color2Intense]
Color=${green_br}

[Color3]
Color=${orange}

[Color3Faint]
Color=${orange_dm}

[Color3Intense]
Color=${orange_br}

[Color4]
Color=${blue}

[Color4Faint]
Color=${blue_dm}

[Color4Intense]
Color=${blue_br}

[Color5]
Color=${magenta}

[Color5Faint]
Color=${magenta_br}

[Color5Intense]
Color=${magenta_dm}

[Color6]
Color=${yellow}

[Color6Faint]
Color=${yellow_dm}

[Color6Intense]
Color=${yellow_br}

[Color7]
Color=${white}

[Color7Faint]
Color=${white_dm}

[Color7Intense]
Color=${white_br}

[Foreground]
Color=${fg}

[ForegroundFaint]
Color=${fg_alt}

[ForegroundIntense]
Color=${fg}

[General]
Blur=false
ColorRandomization=false
Description=Nightfox
Opacity=1
Wallpaper=
  ]],
    konsoleColors
  )

  return konsole
end

return M
