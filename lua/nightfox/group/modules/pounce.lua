-- https://github.com/rlane/pounce.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    PounceAccept = { fg = spec.bg1, bg = spec.palette.orange:harsh() },
    PounceAcceptBest = { fg = spec.bg1, bg = spec.palette.cyan:harsh(), },
    PounceMatch = { fg = spec.fg1, bg = spec.sel1 },
    PounceGap = { fg = spec.fg1, bg = spec.sel0 },
  }
end

return M
