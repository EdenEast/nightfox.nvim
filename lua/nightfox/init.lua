local util = require("nightfox.util")

local M = {}

function M.set()
  local theme = require("nightfox.theme").setup()
  util.load(theme)
end

return M
