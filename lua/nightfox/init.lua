local util = require("nightfox.util")

local M = {}

function M.reload()
  package.loaded["nightfox"] = nil
  package.loaded["nightfox.theme"] = nil
  package.loaded["nightfox.colors"] = nil
  package.loaded["nightfox.colors.nightfox"] = nil
  package.loaded["nightfox.util"] = nil
  package.loaded["nightfox.config"] = nil
  M.set()
end

function M.set()
  local theme = require("nightfox.theme").setup()
  util.load(theme)
end

return M
