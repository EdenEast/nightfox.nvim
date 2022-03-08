-- https://github.com/romgrk/barbar.nvim

local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax

  -- stylua: ignore
  return {
    BufferCurrent        = { bg = spec.fg3, fg = spec.fg1 },
    BufferCurrentIndex   = { bg = spec.fg3, fg = spec.diag.info },
    BufferCurrentMod     = { bg = spec.fg3, fg = spec.diag.warn },
    BufferCurrentSign    = { bg = spec.fg3, fg = spec.diag.info },
    BufferCurrentTarget  = { bg = spec.fg3, fg = spec.diag.error },
    BufferVisible        = { bg = spec.bg0, fg = spec.fg1 },
    BufferVisibleIndex   = { bg = spec.bg0, fg = spec.diag.info },
    BufferVisibleMod     = { bg = spec.bg0, fg = spec.diag.warn },
    BufferVisibleSign    = { bg = spec.bg0, fg = spec.diag.info },
    BufferVisibleTarget  = { bg = spec.bg0, fg = spec.diag.error },
    BufferInactive       = { bg = spec.bg0, fg = syn.comment },
    BufferInactiveIndex  = { bg = spec.bg0, fg = syn.comment },
    BufferInactiveMod    = { bg = spec.bg0, fg = spec.diag_bg.warn },
    BufferInactiveSign   = { bg = spec.bg0, fg = spec.bg3 },
    BufferInactiveTarget = { bg = spec.bg0, fg = spec.diag.error },
    BufferTabpages       = { bg = spec.bg0 },
    BufferTabpage        = { bg = spec.bg0, fg = spec.bg3 },
  }
end

return M
