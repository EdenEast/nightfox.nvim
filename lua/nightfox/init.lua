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

-- Completion function for the NightfoxLoad command
-- @param lead string The current typed string
function M.load_complete(lead, _, _)
  local foxes = require("nightfox.colors").foxes

  if lead == "" then
    return foxes
  end

  local completion_list = {}
  for _, name in pairs(foxes) do
    if vim.startswith(name, lead) then
      table.insert(completion_list, name)
    end
  end

  return completion_list
end

return M
