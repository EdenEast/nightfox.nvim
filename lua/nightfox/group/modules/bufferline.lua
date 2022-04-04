-- https://github.com/akinsho/bufferline.nvim

local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax

  -- stylua: ignore
  return {
    BufferLineFill                = { bg = spec.bg0 },
    BufferLineBackground          = { fg = syn.comment,     bg = spec.bg0 },
    BufferLineBufferVisible       = { fg = spec.fg1,        bg = spec.bg0 },
    BufferLineBufferSelected      = { fg = spec.fg0,        bg = spec.bg1 },
    BufferLineTab                 = { fg = spec.bg3,        bg = spec.bg0 },
    BufferLineTabSelected         = { fg = spec.bg0,        bg = spec.bg0 },
    BufferLineTabClose            = { fg = spec.diag.error, bg = spec.bg0 },
    BufferLineIndicatorSelected   = { fg = spec.bg1,        bg = spec.bg1 },
    BufferLineSeparator           = { fg = spec.diag.info,  bg = spec.bg0 },
    BufferLineSeparatorVisible    = { fg = spec.diag.info,  bg = spec.bg0 },
    BufferLineSeparatorSelected   = { fg = spec.diag.info,  bg = spec.bg1 },
    BufferLineCloseButton         = { fg = spec.diag.error, bg = spec.bg0 },
    BufferLineCloseButtonVisible  = { fg = spec.diag.error, bg = spec.bg0 },
    BufferLineCloseButtonSelected = { fg = spec.diag.error, bg = spec.bg1 },
    BufferLineModified            = { fg = spec.diag.hint,  bg = spec.bg0 },
    BufferLineModifiedVisible     = { fg = spec.diag.hint,  bg = spec.bg0 },
    BufferLineModifiedSelected    = { fg = spec.diag.hint,  bg = spec.bg1 },
    BufferLineError               = { fg = spec.diag.error, bg = spec.diag.error },
    BufferLineErrorDiagnostic     = { fg = spec.diag.error, bg = spec.diag.error },
  }
end

return M
