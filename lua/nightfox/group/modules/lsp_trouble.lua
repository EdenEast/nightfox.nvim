-- https://github.com/simrat39/lsp-trouble.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    LspTroubleText = { fg = spec.fg2 },
    LspTroubleCount = { fg = c.magenta.base, bg = spec.fg3 },
    LspTroubleNormal = { fg = spec.fg3, bg = spec.bg0 },
  }
end

return M
