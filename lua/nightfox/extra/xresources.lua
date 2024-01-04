local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
! Nightfox colors for Xresources
! Style: ${palette.meta.name}
! Upstream: ${palette.meta.url}
*background: ${bg1}
*foreground: ${fg1}
*color0:  ${palette.black}
*color1:  ${palette.red}
*color2:  ${palette.green}
*color3:  ${palette.yellow}
*color4:  ${palette.blue}
*color5:  ${palette.magenta}
*color6:  ${palette.cyan}
*color7:  ${palette.white}
*color8:  ${palette.black.bright}
*color9:  ${palette.red.bright}
*color10: ${palette.green.bright}
*color11: ${palette.yellow.bright}
*color12: ${palette.blue.bright}
*color13: ${palette.magenta.bright}
*color14: ${palette.cyan.bright}
*color15: ${palette.white.bright}
]]

  return template.parse_template_str(content, spec)
end

return M
