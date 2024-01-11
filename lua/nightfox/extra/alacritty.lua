local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  spec.dim_fg = spec.palette.meta.light and spec.fg0 or spec.fg2
  spec.bright_fg = spec.palette.meta.light and spec.fg2 or spec.fg0

  local content = [===[
# Nightfox Alacritty Colors
## name: ${palette.meta.name}
## upstream: ${palette.meta.url}

[colors.primary]
background = "${bg1}"
foreground = "${fg1}"
dim_foreground = "${dim_fg}"
bright_foreground = "${bright_fg}"

[colors.cursor]
text = "${fg1}"
cursor = "${fg2}"

[colors.vi_mode_cursor]
text = "${fg1}"
cursor = "${palette.cyan.base}"

[colors.search.matches]
foreground = "${fg1}"
background = "${sel1}"

[colors.search.focused_match]
foreground = "${fg1}"
background = "${diag.hint}"

[colors.footer_bar]
foreground = "${fg1}"
background = "${bg3}"

[colors.hints.start]
foreground = "${fg1}"
background = "${palette.orange.base}"

[colors.hints.end]
foreground = "${fg1}"
background = "${bg3}"

[colors.selection]
text = "${fg1}"
background = "${sel0}"

[colors.normal]
black = "${palette.black.base}"
red = "${palette.red.base}"
green = "${palette.green.base}"
yellow = "${palette.yellow.base}"
blue = "${palette.blue.base}"
magenta = "${palette.magenta.base}"
cyan = "${palette.cyan.base}"
white = "${palette.white.base}"

[colors.bright]
black = "${palette.black.bright}"
red = "${palette.red.bright}"
green = "${palette.green.bright}"
yellow = "${palette.yellow.bright}"
blue = "${palette.blue.bright}"
magenta = "${palette.magenta.bright}"
cyan = "${palette.cyan.bright}"
white = "${palette.white.bright}"

[colors.dim]
black = "${palette.black.dim}"
red = "${palette.red.dim}"
green = "${palette.green.dim}"
yellow = "${palette.yellow.dim}"
blue = "${palette.blue.dim}"
magenta = "${palette.magenta.dim}"
cyan = "${palette.cyan.dim}"
white = "${palette.white.dim}"

[[colors.indexed_colors]]
index = 16
color = "${palette.orange.base}"

[[colors.indexed_colors]]
index = 17
color = "${palette.pink.base}"
]===]

  return template.parse_template_str(content, spec)
end

return M
