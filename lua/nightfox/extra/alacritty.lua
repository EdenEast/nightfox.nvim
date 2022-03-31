local template = require("nightfox.util.template")

local M = {}

local function conv(color)
  return color:gsub("^#", "0x")
end

local function construct(shade)
  return {
    base = conv(shade.base),
    bright = conv(shade.bright),
  }
end

function M.generate(spec)
  -- Convert default hex string format to Alacritty `0x` format
  local p = spec.palette
  local colors = {
    meta = p.meta,
    bg = conv(spec.bg1),
    fg = conv(spec.fg1),
    black = construct(p.black),
    red = construct(p.red),
    green = construct(p.green),
    yellow = construct(p.yellow),
    blue = construct(p.blue),
    magenta = construct(p.magenta),
    cyan = construct(p.cyan),
    white = construct(p.white),
    orange = construct(p.orange),
    pink = construct(p.pink),
  }

  local content = [[
# Nightfox Alacritty Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'
  # Normal colors
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${white}'
  # Bright colors
  bright:
    black:   '${black.bright}'
    red:     '${red.bright}'
    green:   '${green.bright}'
    yellow:  '${yellow.bright}'
    blue:    '${blue.bright}'
    magenta: '${magenta.bright}'
    cyan:    '${cyan.bright}'
    white:   '${white.bright}'
  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${pink}' }
]]

  return template.parse_template_str(content, colors)
end

return M
