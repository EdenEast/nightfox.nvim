local template = require("nightfox.util.template")

local M = {}

function M.generate(spec)
  local content = [[
{
    "name" : "${pallet.meta.name}",
    "background" : "${bg1}",
    "foreground" : "${fg1}",
    "black" : "${pallet.black}",
    "blue" : "${pallet.blue}",
    "cyan" : "${pallet.cyan}",
    "green" : "${pallet.green}",
    "purple" : "${pallet.magenta}",
    "red" : "${pallet.red}",
    "white" : "${pallet.white}",
    "yellow" : "${pallet.yellow}",
    "brightBlack" : "${pallet.black.bright}",
    "brightBlue" : "${pallet.blue.bright}",
    "brightCyan" : "${pallet.cyan.bright}",
    "brightGreen" : "${pallet.green.bright}",
    "brightPurple" : "${pallet.magenta.bright}",
    "brightRed" : "${pallet.red.bright}",
    "brightWhite" : "${pallet.white.bright}",
    "brightYellow" : "${pallet.yellow.bright}"
}
]]

  return template.parse_template_str(content, spec)
end

return M
