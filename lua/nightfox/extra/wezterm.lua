local template = require("nightfox.util.template")

local M = {}

function M.generate(spec)
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
selection_bg = "${sel0}"
selection_fg = "${fg1}"
ansi = ["${palette.black}", "${palette.red}", "${palette.green}", "${palette.yellow}", "${palette.blue}", "${palette.magenta}", "${palette.cyan}", "${palette.white}"]
brights = ["${palette.black.bright}", "${palette.red.bright}", "${palette.green.bright}", "${palette.yellow.bright}", "${palette.blue.bright}", "${palette.magenta.bright}", "${palette.cyan.bright}", "${palette.white.bright}"]
]]

  return template.parse_template_str(content, spec)
end

return M
