local util = require("nightfox.util")

local M = {}

function M.reload()
  package.loaded["nightfox"] = nil
  package.loaded["nightfox.colors"] = nil
  package.loaded["nightfox.colors.hardfox"] = nil
  package.loaded["nightfox.colors.nightfox"] = nil
  package.loaded["nightfox.colors.nordfox"] = nil
  package.loaded["nightfox.config"] = nil
  package.loaded["nightfox.theme"] = nil
  package.loaded["nightfox.util"] = nil
  M.set()
end

function M.set(config)
  local theme = require("nightfox.theme").setup(config)
  util.load(theme)
end

return M
