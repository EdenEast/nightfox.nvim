local template = require("nightfox.util.template")
local Color = require("nightfox.lib.color")

local M = {}

local function conv(color)
  local c = Color.from_hex(color)
  return {
    r = c.red,
    g = c.green,
    b = c.blue,
  }
end

function M.generate(spec)
  local colors = {
    meta = spec.palette.meta,

    bg = conv(spec.bg1),
    fg = conv(spec.fg1),
    sel = conv(spec.sel0),

    black = conv(spec.palette.black.base),
    red = conv(spec.palette.red.base),
    green = conv(spec.palette.green.base),
    yellow = conv(spec.palette.yellow.base),
    blue = conv(spec.palette.blue.base),
    magenta = conv(spec.palette.magenta.base),
    cyan = conv(spec.palette.cyan.base),
    white = conv(spec.palette.white.base),
    orange = conv(spec.palette.orange.base),
    pink = conv(spec.palette.pink.base),

    black_br = conv(spec.palette.black.bright),
    red_br = conv(spec.palette.red.bright),
    green_br = conv(spec.palette.green.bright),
    yellow_br = conv(spec.palette.yellow.bright),
    blue_br = conv(spec.palette.blue.bright),
    magenta_br = conv(spec.palette.magenta.bright),
    cyan_br = conv(spec.palette.cyan.bright),
    white_br = conv(spec.palette.white.bright),
    orange_br = conv(spec.palette.orange.bright),
    pink_br = conv(spec.palette.pink.bright),
  }

  local content = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<!-- Nightfox ITerm Colors -->
<!-- Style: ${meta.name} -->
<!-- Upstream: ${meta.url} -->
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
    <real>${sel.b}</real>
    <key>Green Component</key>
    <real>${sel.g}</real>
    <key>Red Component</key>
    <real>${sel.r}</real>
  </dict>
</dict>
</plist>
]]

  return template.parse_template_str(content, colors)
end

return M
