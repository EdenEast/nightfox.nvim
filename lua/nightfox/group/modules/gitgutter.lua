-- https://github.com/airblade/vim-gitgutter

local M = {}

function M.get(spec, config, opts)
  local git = spec.git

  -- stylua: ignore
  return {
    GitGutterAdd    = { fg = git.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
