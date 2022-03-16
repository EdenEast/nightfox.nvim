local template = require("nightfox.util.template")

local M = {}

function M.generate(spec)
  local content = [[
! Nightfox colors for Xresources
! Style: ${pallet.meta.name}
! Upstream: ${pallet.meta.url}
*background: ${bg1}
*foreground: ${fg1}
*color0:  ${pallet.black}
*color1:  ${pallet.red}
*color2:  ${pallet.green}
*color3:  ${pallet.yellow}
*color4:  ${pallet.blue}
*color5:  ${pallet.magenta}
*color6:  ${pallet.cyan}
*color7:  ${pallet.white}
*color8:  ${pallet.black.bright}
*color9:  ${pallet.red.bright}
*color10: ${pallet.green.bright}
*color11: ${pallet.yellow.bright}
*color12: ${pallet.blue.bright}
*color13: ${pallet.magenta.bright}
*color14: ${pallet.cyan.bright}
*color15: ${pallet.white.bright}
]]

  return template.parse_template_str(content, spec)
end

return M
