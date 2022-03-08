-- https://github.com/nvim-telescope/telescope.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = spec.bg4 },
    TelescopeSelectionCaret = { fg = spec.diag.hint },
    TelescopeSelection      = { bg = spec.sel0 },
    TelescopeMatching       = { fg = spec.fg1, bg = spec.sel1 },
  }
end

return M
