local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
# Nightfox colors for Kitty
## name: ${palette.meta.name}
## upstream: ${palette.meta.url}

background ${bg1}
foreground ${fg1}
selection_background ${sel0}
selection_foreground ${fg1}
cursor_text_color ${bg1}
url_color ${palette.green}

# Cursor
# uncomment for reverse background
# cursor none
cursor ${fg1}

# Border
active_border_color ${palette.blue}
inactive_border_color ${bg4}
bell_border_color ${palette.orange}

# Tabs
active_tab_background ${palette.blue}
active_tab_foreground ${bg0}
inactive_tab_background ${sel0}
inactive_tab_foreground ${syntax.comment}

# normal
color0 ${palette.black}
color1 ${palette.red}
color2 ${palette.green}
color3 ${palette.yellow}
color4 ${palette.blue}
color5 ${palette.magenta}
color6 ${palette.cyan}
color7 ${palette.white}

# bright
color8 ${palette.black.bright}
color9 ${palette.red.bright}
color10 ${palette.green.bright}
color11 ${palette.yellow.bright}
color12 ${palette.blue.bright}
color13 ${palette.magenta.bright}
color14 ${palette.cyan.bright}
color15 ${palette.white.bright}

# extended colors
color16 ${palette.orange}
color17 ${palette.pink}
]]

  return template.parse_template_str(content, spec)
end

return M
