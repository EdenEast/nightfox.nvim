-- https://github.com/stevearc/aerial.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    AerialLine  = { link = "Search" },
    AerialGuide = { fg = spec.bg4 },
  }
end

return M
