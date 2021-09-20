local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
# Nightfox colors for Kitty
## name: ${meta.name}
## upstream: ${meta.url}

background ${bg}
foreground ${fg}
selection_background ${bg_highlight}
selection_foreground ${fg}
url_color ${green}
cursor ${fg}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${bg_alt}
inactive_tab_background ${bg_highlight}
inactive_tab_foreground ${comment}

# normal
color0 ${black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
color7 ${white_br}

# bright
color8 ${black_br}
color9 ${red_br}
color10 ${green_br}
color11 ${yellow_br}
color12 ${blue_br}
color13 ${magenta_br}
color14 ${cyan_br}
color15 ${white_br}

# extended colors
color16 ${orange}
color17 ${pink}
  ]],
    colors
  )
  return kitty
end

return M
