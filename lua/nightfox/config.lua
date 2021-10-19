local util = require("nightfox.util")
local M = {}

local config = {
  fox = "nightfox", -- Which fox style should be applied
  transparent = false, -- Disable setting the background color
  alt_nc = false, -- Non current window bg to alt color
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = "NONE", -- Style that is applied to comments: see `highlight-args` for options
    functions = "NONE", -- Style that is applied to functions: see `highlight-args` for options
    keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
    strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
    variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = false, -- Enable/Disable inverse highlighting for match parens
    visual = false, -- Enable/Disable inverse highlighting for visual selection
    search = false, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {}, -- Override default colors
  hlgroups = {}, -- Override highlight groups
}

M.options = {}

function M.set_options(opts)
  opts = opts or {}
  M.options = util.tbl_deep_extend(M.options, opts)
end

function M.check_depricated_options()
  local keys = {
    "style",
    "transparent",
    "italic_comments",
    "italic_functions",
    "italic_keywords",
    "italic_strings",
    "italic_variables",
    "terminal_colors",
    "color_delimiter",
    "colors",
  }

  local results = {}

  for _, k in ipairs(keys) do
    local key = "nightfox_" .. k
    if vim.g[key] ~= nil then
      table.insert(results, "Warning config using '" .. key .. "' is deprecated in favor of lua setup configuration")
    end
  end

  if #results > 0 then
    table.insert(results, "See https://github.com/edeneast/nightfox.nvim for more info")
    util.warn(unpack(results))
  end
end

M.check_depricated_options()

M.set_options(config)

return M
