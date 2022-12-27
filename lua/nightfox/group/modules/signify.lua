-- https://github.com/mhinz/vim-signify

local M = {}

function M.get(spec, config, opts)
  local git = spec.git

  -- stylua: ignore
  return {
    SignifySignAdd    = { fg = git.add }, -- diff mode: Added line |diff.txt|
    SignifySignChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
    SignifySignDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
