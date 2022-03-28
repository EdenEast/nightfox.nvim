-- https://github.com/lewis6991/gitsigns.nvim

local M = {}

function M.get(spec, config, opts)
  local git = spec.git

  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = git.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
