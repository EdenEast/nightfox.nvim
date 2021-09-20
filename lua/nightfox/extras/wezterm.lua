local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
# Nightfox Wezterm Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${bg_highlight}"
selection_fg = "${fg}"
ansi = ["${black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${white}"]
brights = ["${black_br}", "${red_br}", "${green_br}", "${yellow_br}", "${blue_br}", "${magenta_br}", "${cyan_br}", "${white_br}"]
  ]],
    colors
  )
  return wezterm
end

return M
