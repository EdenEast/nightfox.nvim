local template = require("nightfox.util.template")

local M = {}

function M.generate(spec)
  local content = [[
# Nightfox Wezterm Colors
# Style: ${pallet.meta.name}
# Upstream: ${pallet.meta.url}
[colors]
foreground = "${fg1}"
background = "${bg1}"
cursor_bg = "${fg1}"
cursor_border = "${fg1}"
cursor_fg = "${bg1}"
selection_bg = "${sel0}"
selection_fg = "${fg1}"
ansi = ["${pallet.black}", "${pallet.red}", "${pallet.green}", "${pallet.yellow}", "${pallet.blue}", "${pallet.magenta}", "${pallet.cyan}", "${pallet.white}"]
brights = ["${pallet.black.bright}", "${pallet.red.bright}", "${pallet.green.bright}", "${pallet.yellow.bright}", "${pallet.blue.bright}", "${pallet.magenta.bright}", "${pallet.cyan.bright}", "${pallet.white.bright}"]
]]

  return template.parse_template_str(content, spec)
end

return M
