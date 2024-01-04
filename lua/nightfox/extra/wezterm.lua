local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
[metadata]
name = "${palette.meta.name}"
author = "EdenEast"
origin_url = "https://github.com/EdenEast/nightfox.nvim"

[colors]
foreground = "${fg1}"
background = "${bg1}"
cursor_bg = "${fg1}"
cursor_border = "${fg1}"
cursor_fg = "${bg1}"
compose_cursor = '${palette.orange}'
selection_bg = "${sel0}"
selection_fg = "${fg1}"
scrollbar_thumb = "${fg3}"
split = "${bg0}"
visual_bell = "${fg1}"
ansi = ["${palette.black}", "${palette.red}", "${palette.green}", "${palette.yellow}", "${palette.blue}", "${palette.magenta}", "${palette.cyan}", "${palette.white}"]
brights = ["${palette.black.bright}", "${palette.red.bright}", "${palette.green.bright}", "${palette.yellow.bright}", "${palette.blue.bright}", "${palette.magenta.bright}", "${palette.cyan.bright}", "${palette.white.bright}"]

[colors.indexed]
16 = "${palette.pink}"
17 = "${palette.orange}"

[colors.tab_bar]
background = "${bg0}"
inactive_tab_edge = "${bg0}"
inactive_tab_edge_hover = "${bg2}"

[colors.tab_bar.active_tab]
bg_color = "${fg3}"
fg_color = "${bg1}"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.inactive_tab]
bg_color = "${bg2}"
fg_color = "${fg2}"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.inactive_tab_hover]
bg_color = "${bg3}"
fg_color = "${fg1}"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.new_tab]
bg_color = "${bg1}"
fg_color = "${fg2}"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

[colors.tab_bar.new_tab_hover]
bg_color = "${bg3}"
fg_color = "${fg1}"
intensity = "Normal"
italic = false
strikethrough = false
underline = "None"

]]

  return template.parse_template_str(content, spec)
end

return M
