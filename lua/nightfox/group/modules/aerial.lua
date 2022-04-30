-- https://github.com/simrat39/symbols-outline.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    AerialLine  = { link = "Search" },
    AerialGuide = { fg = spec.bg4 },
  }
end

return M
