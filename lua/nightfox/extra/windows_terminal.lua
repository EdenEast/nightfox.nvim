local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
{
    "name" : "${palette.meta.name}",
    "background" : "${bg1}",
    "foreground" : "${fg1}",
    "cursorColor": "${fg1}",
    "selectionBackground": "${sel0}",
    "black" : "${palette.black}",
    "blue" : "${palette.blue}",
    "cyan" : "${palette.cyan}",
    "green" : "${palette.green}",
    "purple" : "${palette.magenta}",
    "red" : "${palette.red}",
    "white" : "${palette.white}",
    "yellow" : "${palette.yellow}",
    "brightBlack" : "${palette.black.bright}",
    "brightBlue" : "${palette.blue.bright}",
    "brightCyan" : "${palette.cyan.bright}",
    "brightGreen" : "${palette.green.bright}",
    "brightPurple" : "${palette.magenta.bright}",
    "brightRed" : "${palette.red.bright}",
    "brightWhite" : "${palette.white.bright}",
    "brightYellow" : "${palette.yellow.bright}"
}
]]

  return template.parse_template_str(content, spec)
end

return M
