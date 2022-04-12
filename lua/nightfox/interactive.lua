local util = require("nightfox.util")
local cmd = util.is_nvim and vim.cmd or vim.command
local fmt = string.format

local M = {}

function M.attach()
  vim.g.nightfox_debug = true
  cmd([[
    augroup NightfoxInteractiveAugroup
      autocmd!
      autocmd BufWritePost <buffer> lua require("nightfox.interactive").execute()
    augroup END
  ]])
end

function M.execute()
  require("nightfox.config").reset()
  require("nightfox.override").reset()
  cmd(fmt(
    [[
      luafile %%
      colorscheme %s
      doautocmd ColorScheme
    ]],
    vim.g.colors_name
  ))
end

return M
