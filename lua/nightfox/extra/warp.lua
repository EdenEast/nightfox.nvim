local template = require("nightfox.util.template")

local M = {}

local function construct(shade)
  return {
    base = shade.base,
    bright = shade.bright,
  }
end

function M.generate(spec, _)
  local p = spec.palette
  local colors = {
    meta = p.meta,
    bg = spec.bg1,
    fg = spec.fg1,
    details = p.meta.light and "lighter" or "darker",
    black = construct(p.black),
    red = construct(p.red),
    green = construct(p.green),
    yellow = construct(p.yellow),
    blue = construct(p.blue),
    magenta = construct(p.magenta),
    cyan = construct(p.cyan),
    white = construct(p.white),
  }

  local content = [[
# Nightfox Warp Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
accent:     '${fg}'
background: '${bg}'
foreground: '${fg}'
details:    '${details}'
terminal_colors:
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${white}'
  bright:
    black:   '${black.bright}'
    red:     '${red.bright}'
    green:   '${green.bright}'
    yellow:  '${yellow.bright}'
    blue:    '${blue.bright}'
    magenta: '${magenta.bright}'
    cyan:    '${cyan.bright}'
    white:   '${white.bright}'
]]

  return template.parse_template_str(content, colors)
end

return M
