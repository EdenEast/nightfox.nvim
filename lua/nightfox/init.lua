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

  util.load(theme, true)
end

-- Loads colorscheme and applies the highlight groups.
-- If a name is passed it will override what was set in the configuration setup.
--
-- This function is internal and should not be called by the user. This funciton is
-- to be called from the `colors/*.vim` files. This function will not execute the
-- autocmd `ColorScheme`. The command `:colorscheme` is already handling this.
-- @param name string
function M._colorscheme_load()
  local colors = require("nightfox.colors").load()
  local theme = require("nightfox.theme").apply(colors)

  util.load(theme, false)
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
    if name:sub(1, #lead) == lead then
      table.insert(completion_list, name)
    end
  end

  return completion_list
end

function M.set()
  util.warn(
    "`set()` has been deprecated in favor of `load()`",
    "See https://github.com/edeneast/nightfox.nvim for more info"
  )
  M.load()
end

return M
