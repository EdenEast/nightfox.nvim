-- https://github.com/phaazon/hop.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    HopNextKey   = { fg = c.cyan.base, style = "bold" },
    HopNextKey1  = { fg = c.blue.base, style = "bold" },
    HopNextKey2  = { fg = c.blue:subtle() },
    HopUnmatched = { fg = spec.syntax.comment },
  }
end

return M
