package.loaded["nightfox.config"] = nil
local util = require("nightfox.util")

local M = {}

-- Set the configuration values for nightfox.
-- This functions sets the configuration options for nightfox. These settings will be used when the colorscheme is
-- applied. The colorscheme is applied with the `load` function.
-- @param opts table
function M.setup(opts)
  require("nightfox.config").set_options(opts)
end

-- Loads colorscheme and applies the highlight groups.
-- If a name is passed it will override what was set in the configuration setup.
-- @param name string
function M.load(name)
  local colors = require("nightfox.colors").load(name)
  local theme = require("nightfox.theme").apply(colors)

  util.load(theme)
end

return M
