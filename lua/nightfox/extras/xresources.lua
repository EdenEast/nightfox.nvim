local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = util.template(
    [[
! Nightfox colors for Xresources
! Style: ${meta.name}
! Upstream: ${meta.url}
*background: ${bg}
*foreground: ${fg}
*color0:  ${black}
*color1:  ${red}
*color2:  ${green}
*color3:  ${yellow}
*color4:  ${blue}
*color5:  ${magenta}
*color6:  ${cyan}
*color7:  ${white}
*color8:  ${black_br}
*color9:  ${red_br}
*color10: ${green_br}
*color11: ${yellow_br}
*color12: ${blue_br}
*color13: ${magenta_br}
*color14: ${cyan_br}
*color15: ${white_br}

]],
    colors
  )
  return xr
end

return M
