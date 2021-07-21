---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local function opt(key, default)
  key = "nightfox_" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  style = opt("style", "nightfox"),
  transparent = opt("transparent", false),
  comment_style = opt("italic_comments", false) and "italic" or "NONE",
  function_style = opt("italic_functions", false) and "italic" or "NONE",
  keyword_style = opt("italic_keywords", false) and "italic" or "NONE",
  string_style = opt("italic_strings", false) and "italic" or "NONE",
  variable_style = opt("italic_variables", false) and "italic" or "NONE",
  terminal_colors = opt("terminal_colors", true),
  -- hide_inactive_statusline = opt("hide_inactive_statusline", false),
  -- sidebars = opt("sidebars", {}),
  -- colors = opt("colors", {}),
}

return config
