local template = require("nightfox.util.template")

local M = {}

function M.generate(specs)
  local lines = {}
  lines[#lines + 1] = [[
// Nightfox Theme:
// https://github.com/edeneast/nightfox.nvim

themes {
]]

  for _, spec in pairs(specs) do
    local content = [[
  ${palette.meta.name} {
    bg "${bg1}"
    fg "${fg1}"
    red "${palette.red}"
    green "${palette.green}"
    blue "${palette.blue}"
    yellow "${palette.yellow}"
    magenta "${palette.magenta}"
    orange "${palette.orange}"
    cyan "${palette.cyan}"
    black "${palette.black}"
    white "${palette.white}"
  }
]]
    lines[#lines + 1] = template.parse_template_str(content, spec)
  end
  lines[#lines + 1] = "}"

  return table.concat(lines)
end

M.generate(require("nightfox.spec").load())

return M
