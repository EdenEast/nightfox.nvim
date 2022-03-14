local template = require("nightfox.util.template")

local M = {}

function M.generate(spec)
  local content = [[
# Nightfox colors for Kitty
## name: ${pallet.meta.name}
## upstream: ${pallet.meta.url}

background ${bg1}
foreground ${fg1}
selection_background ${sel0}
selection_foreground ${fg1}
url_color ${pallet.green}
cursor ${fg1}

# Tabs
active_tab_background ${pallet.blue}
active_tab_foreground ${bg0}
inactive_tab_background ${sel0}
inactive_tab_foreground ${syntax.comment}

# normal
color0 ${pallet.black}
color1 ${pallet.red}
color2 ${pallet.green}
color3 ${pallet.yellow}
color4 ${pallet.blue}
color5 ${pallet.magenta}
color6 ${pallet.cyan}
color7 ${pallet.white}

# bright
color8 ${pallet.black.bright}
color9 ${pallet.red.bright}
color10 ${pallet.green.bright}
color11 ${pallet.yellow.bright}
color12 ${pallet.blue.bright}
color13 ${pallet.magenta.bright}
color14 ${pallet.cyan.bright}
color15 ${pallet.white.bright}

# extended colors
color16 ${pallet.orange}
color17 ${pallet.pink}
]]

  return template.parse_template_str(content, spec)
end

return M
