local util = require("nightfox.util")

local M = {}

function M.set(config)
  local theme = require("nightfox.theme").setup(config)
  util.load(theme)
end

return M
