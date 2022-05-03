local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax
  local diag = spec.diag
  local title = spec.palette.cyan:harsh()

  -- stylua: ignore
  return {
    DapUIVariable                = { fg = syn.variable },
    DapUIScope                   = { fg = title },
    DapUIType                    = { link = "Type" },
    DapUIValue                   = { fg = syn.variable },
    DapUIModifiedValue           = { fg = syn.variable, style = "bold" },
    DapUIDecoration              = { fg = spec.fg3 },
    DapUIThread                  = { link = "String" },
    DapUIStoppedThread           = { fg = title },
    DapUIFrameName               = { link = "Normal" },
    DapUISource                  = { link = "Keyword" },
    DapUILineNumber              = { link = "Number" },
    DapUIFloatBorder             = { link = "FloatBorder" },
    DapUIWatchesEmpty            = { fg = diag.error },
    DapUIWatchesValue            = { fg = diag.warn },
    DapUIWatchesError            = { fg = diag.error },
    DapUIBreakpointsPath         = { fg = title },
    DapUIBreakpointsInfo         = { fg = diag.info },
    DapUIBreakpointsCurrentLine  = { fg = diag.hint, style = "bold" },
    DapUIBreakpointsLine         = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { fg = syn.comment },
  }
end

return M
