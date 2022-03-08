local M = {}

function M.get(spec, config, opts)
  local d = spec.diag
  local dbg = spec.diag_bg

  -- stylua: ignore
  return {
    DiagnosticError            = { fg = d.error },
    DiagnosticWarn             = { fg = d.warning },
    DiagnosticInfo             = { fg = d.info },
    DiagnosticHint             = { fg = d.hint },

    DiagnosticSignError        = { link = "DiagnosticError" },
    DiagnosticSignWarn         = { link = "DiagnosticWarn" },
    DiagnosticSignInfo         = { link = "DiagnosticInfo" },
    DiagnosticSignHint         = { link = "DiagnosticHint" },

    DiagnosticVirtualTextError = { fg = d.error, bg = dbg.error },
    DiagnosticVirtualTextWarn  = { fg = d.warn, bg = dbg.warn },
    DiagnosticVirtualTextInfo  = { fg = d.info, bg = dbg.info },
    DiagnosticVirtualTextHint  = { fg = d.hint, bg = dbg.hint },

    DiagnosticUnderlineError   = { style = "undercurl", sp = d.error },
    DiagnosticUnderlineWarn    = { style = "undercurl", sp = d.warning },
    DiagnosticUnderlineInfo    = { style = "undercurl", sp = d.info },
    DiagnosticUnderlineHint    = { style = "undercurl", sp = d.hint },
  }
end

return M
