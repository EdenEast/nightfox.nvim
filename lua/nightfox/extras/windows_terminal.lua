local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local winterm = util.template(
    [[
{
    "name" : "${meta.name}",

    "background" : "${bg}",
    "foreground" : "${fg}",

    "black" : "${black}",
    "blue" : "${blue}",
    "cyan" : "${cyan}",
    "green" : "${green}",
    "purple" : "${magenta}",
    "red" : "${red}",
    "white" : "${white}",
    "yellow" : "${yellow}",

    "brightBlack" : "${black_br}",
    "brightBlue" : "${blue_br}",
    "brightCyan" : "${cyan_br}",
    "brightGreen" : "${green_br}",
    "brightPurple" : "${magenta_br}",
    "brightRed" : "${red_br}",
    "brightWhite" : "${white_br}",
    "brightYellow" : "${yellow_br}"
},
  ]],
    colors
  )
  return winterm
end

return M
