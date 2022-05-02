local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax
  local diag = spec.diag

  -- stylua: ignore
  return {
    DapUIVariable                = { fg = syn.variable },
    DapUIScope                   = { link = "Title" },
    DapUIType                    = { link = "Type" },
    DapUIValue                   = { fg = syn.variable },
    DapUIModifiedValue           = { fg = syn.variable, style = "bold" },
    DapUIDecoration              = { fg = spec.fg3 },
    DapUIThread                  = { link = "String" },
    DapUIStoppedThread           = { link = "Title" },
    DapUIFrameName               = { link = "Normal" },
    DapUISource                  = { link = "Keyword" },
    DapUILineNumber              = { link = "Number" },
    DapUIFloatBorder             = { link = "FloatBorder" },
    DapUIWatchesEmpty            = { fg = diag.error },
    DapUIWatchesValue            = { fg = diag.warn },
    DapUIWatchesError            = { fg = diag.error },
    DapUIBreakpointsPath         = { link = "Title" },
    DapUIBreakpointsInfo         = { fg = "#A9FF68" },
    DapUIBreakpointsCurrentLine  = { fg = diag.hint, style = "bold" },
    DapUIBreakpointsLine         = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { fg = syn.comment },
  }
end

return M
