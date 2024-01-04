local template = require("nightfox.util.template")

local M = {}

local function conv(color)
  return color:gsub("^#", "")
end

function M.generate(spec, _)
  -- Remove '#' from color
  local p = spec.palette
  local colors = {
    meta = p.meta,
    black = conv(spec.bg1),
    bg2 = conv(spec.bg2),
    bg3 = conv(spec.bg3),
    white = conv(spec.fg1),
    fg2 = conv(spec.fg2),
    fg3 = conv(spec.fg3),
    bright_black = conv(p.black.bright),
    red = conv(p.red.base),
    green = conv(p.green.base),
    yellow = conv(p.yellow.base),
    blue = conv(p.blue.base),
    magenta = conv(p.magenta.base),
    cyan = conv(p.cyan.base),
    bright_white = conv(p.white.bright),
    orange = conv(p.orange.base),
    pink = conv(p.pink.base),
  }
  local content = [[
scheme: "${meta.name}"
author: "EdenEast"
base00: "${black}"
base01: "${bg2}"
base02: "${bg3}"
base03: "${bright_black}"
base04: "${fg3}"
base05: "${white}"
base06: "${fg2}"
base07: "${bright_white}"
base08: "${red}"
base09: "${orange}"
base0A: "${yellow}"
base0B: "${green}"
base0C: "${cyan}"
base0D: "${blue}"
base0E: "${magenta}"
base0F: "${pink}"
]]

  return template.parse_template_str(content, colors)
end

return M
