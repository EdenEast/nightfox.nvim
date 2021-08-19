local util = require("nightfox.util")
local fmt = string.format

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local component_names = { "r", "g", "b" }
  local itermcolors = {}

  for k, v in pairs(colors) do
    if type(v) == "string" then
      -- Skip the name, only colors
      if v:match("^#") then
        local comp = util.hex_to_norm_rgb(v)
        for i, name in ipairs(component_names) do
          local keyname = fmt("%s.%s", k, name)
          itermcolors[keyname] = comp[i]
        end
      else
        -- This is for the name
        itermcolors[k] = v
      end
    end
  end

  local iterm = util.template(
    [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<!-- Nightfox ITerm Colors -->
<!-- Style: ${name} -->
<dict>
  <key>Ansi 0 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${black.b}</real>
    <key>Green Component</key>
    <real>${black.g}</real>
    <key>Red Component</key>
    <real>${black.r}</real>
  </dict>
  <key>Ansi 1 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${red.b}</real>
    <key>Green Component</key>
    <real>${red.g}</real>
    <key>Red Component</key>
    <real>${red.r}</real>
  </dict>
  <key>Ansi 10 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${green_br.b}</real>
    <key>Green Component</key>
    <real>${green_br.g}</real>
    <key>Red Component</key>
    <real>${green_br.r}</real>
  </dict>
  <key>Ansi 11 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${yellow_br.b}</real>
    <key>Green Component</key>
    <real>${yellow_br.g}</real>
    <key>Red Component</key>
    <real>${yellow_br.r}</real>
  </dict>
  <key>Ansi 12 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${blue_br.b}</real>
    <key>Green Component</key>
    <real>${blue_br.g}</real>
    <key>Red Component</key>
    <real>${blue_br.r}</real>
  </dict>
  <key>Ansi 13 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${magenta_br.b}</real>
    <key>Green Component</key>
    <real>${magenta_br.g}</real>
    <key>Red Component</key>
    <real>${magenta_br.r}</real>
  </dict>
  <key>Ansi 14 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${cyan_br.b}</real>
    <key>Green Component</key>
    <real>${cyan_br.g}</real>
    <key>Red Component</key>
    <real>${cyan_br.r}</real>
  </dict>
  <key>Ansi 15 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${white_br.b}</real>
    <key>Green Component</key>
    <real>${white_br.g}</real>
    <key>Red Component</key>
    <real>${white_br.r}</real>
  </dict>
  <key>Ansi 2 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${green.b}</real>
    <key>Green Component</key>
    <real>${green.g}</real>
    <key>Red Component</key>
    <real>${green.r}</real>
  </dict>
  <key>Ansi 3 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${yellow.b}</real>
    <key>Green Component</key>
    <real>${yellow.g}</real>
    <key>Red Component</key>
    <real>${yellow.r}</real>
  </dict>
  <key>Ansi 4 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${blue.b}</real>
    <key>Green Component</key>
    <real>${blue.g}</real>
    <key>Red Component</key>
    <real>${blue.r}</real>
  </dict>
  <key>Ansi 5 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${magenta.b}</real>
    <key>Green Component</key>
    <real>${magenta.g}</real>
    <key>Red Component</key>
    <real>${magenta.r}</real>
  </dict>
  <key>Ansi 6 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${cyan.b}</real>
    <key>Green Component</key>
    <real>${cyan.g}</real>
    <key>Red Component</key>
    <real>${cyan.r}</real>
  </dict>
  <key>Ansi 7 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${white.b}</real>
    <key>Green Component</key>
    <real>${white.g}</real>
    <key>Red Component</key>
    <real>${white.r}</real>
  </dict>
  <key>Ansi 8 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${black_br.b}</real>
    <key>Green Component</key>
    <real>${black_br.g}</real>
    <key>Red Component</key>
    <real>${black_br.r}</real>
  </dict>
  <key>Ansi 9 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${red_br.b}</real>
    <key>Green Component</key>
    <real>${red_br.g}</real>
    <key>Red Component</key>
    <real>${red_br.r}</real>
  </dict>
  <key>Background Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg.b}</real>
    <key>Green Component</key>
    <real>${bg.g}</real>
    <key>Red Component</key>
    <real>${bg.r}</real>
  </dict>
  <key>Bold Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Cursor Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Cursor Text Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg.b}</real>
    <key>Green Component</key>
    <real>${bg.g}</real>
    <key>Red Component</key>
    <real>${bg.r}</real>
  </dict>
  <key>Foreground Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Selected Text Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Selection Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg_highlight.b}</real>
    <key>Green Component</key>
    <real>${bg_highlight.g}</real>
    <key>Red Component</key>
    <real>${bg_highlight.r}</real>
  </dict>
</dict>
</plist>
  ]],
    itermcolors
  )

  return iterm
end

M.generate(require("nightfox.colors").setup())

return M
