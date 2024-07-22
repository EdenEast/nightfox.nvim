-- https://github.com/echasnovski/mini.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    MiniAnimateCursor      = { style = "reverse,nocombine" },
    MiniAnimateNormalFloat = { link = "NormalFloat" },

    MiniClueBorder              = { link = "FloatBorder" },
    MiniClueDescGroup           = { link = "DiagnosticFloatingWarn" },
    MiniClueDescSingle          = { link = "NormalFloat" },
    MiniClueNextKey             = { link = "DiagnosticFloatingHint" },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator           = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle               = { link = "FloatTitle" },

    MiniCompletionActiveParameter = { style = "underline" },

    MiniCursorword        = { link = "LspReferenceText" },
    MiniCursorwordCurrent = { link = "LspReferenceText" },

    MiniDepsChangeAdded   = { link = "diffAdded" },
    MiniDepsChangeRemoved = { link = "diffRemoved" },
    MiniDepsHint          = { link = "DiagnosticHint" },
    MiniDepsInfo          = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking   = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder   = { link = "Comment" },
    MiniDepsTitle         = { link = "Title" },
    MiniDepsTitleError    = { fg = c.bg0, bg = c.red.base },
    MiniDepsTitleSame     = { link = "DiffText" },
    MiniDepsTitleUpdate   = { fg = c.bg0, bg = c.green.base },

    MiniDiffSignAdd     = { fg = spec.git.add },
    MiniDiffSignChange  = { fg = spec.git.changed },
    MiniDiffSignDelete  = { fg = spec.git.removed },
    MiniDiffOverAdd     = { link = "DiffAdd" },
    MiniDiffOverChange  = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete  = { link = "DiffDelete"  },

    MiniFilesBorder         = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
    MiniFilesCursorLine     = { link = "CursorLine" },
    MiniFilesDirectory      = { link = "Directory"   },
    MiniFilesFile           = { fg = c.fg1 },
    MiniFilesNormal         = { link = "NormalFloat" },
    MiniFilesTitle          = { link = "FloatTitle"  },
    MiniFilesTitleFocused   = { fg = c.fg1, style = "bold" },

    MiniHipatternsFixme = { fg = c.bg0, bg = spec.diag.error, style = "bold" },
    MiniHipatternsHack  = { fg = c.bg0, bg = spec.diag.warn, style = "bold" },
    MiniHipatternsNote  = { fg = c.bg0, bg = spec.diag.info, style = "bold" },
    MiniHipatternsTodo  = { fg = c.bg0, bg = spec.diag.hint, style = "bold" },

    MiniIconsAzure  = { fg = c.blue.bright },
    MiniIconsBlue   = { fg = c.blue.base },
    MiniIconsCyan   = { fg = c.cyan.base },
    MiniIconsGreen  = { fg = c.green.base },
    MiniIconsGrey   = { fg = c.fg0 },
    MiniIconsOrange = { fg = c.orange.base },
    MiniIconsPurple = { fg = c.magenta.base },
    MiniIconsRed    = { fg = c.red.base },
    MiniIconsYellow = { fg = c.yellow.base },

    MiniIndentscopeSymbol = { link = "Delimiter" },
    MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

    MiniJump = { fg = spec.bg0, bg = c.magenta.base },

    MiniJump2dDim        = { link = "Comment" },
    MiniJump2dSpot       = { fg = c.cyan.base, style = "bold" },
    MiniJump2dSpotAhead  = { fg = c.blue.dim, bg = c.bg0, style = "nocombine" },
    MiniJump2dSpotUnique = { fg = c.yellow.base, style = "bold"  },

    MiniMapNormal       = { link = "NormalFloat" },
    MiniMapSymbolCount  = { link = "Special" },
    MiniMapSymbolLine   = { link = "Title" },
    MiniMapSymbolView   = { link = "Delimiter" },

    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle  = { link = "FloatTitle"  },

    MiniOperatorsExchangeFrom = { link = "IncSearch" },

    MiniPickBorder        = { link = "FloatBorder" },
    MiniPickBorderBusy    = { link = "DiagnosticFloatingWarn" },
    MiniPickBorderText    = { link = "FloatTitle" },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile      = { link = "MiniPickNormal" },
    MiniPickHeader        = { link = "DiagnosticFloatingHint" },
    MiniPickMatchCurrent  = { link = "CursorLine" },
    MiniPickMatchMarked   = { link = "Visual" },
    MiniPickMatchRanges   = { link = "DiagnosticFloatingHint" },
    MiniPickNormal        = { link = "NormalFloat" },
    MiniPickPreviewLine   = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt        = { link = "DiagnosticFloatingInfo" },

    MiniStarterCurrent    = { style = "nocombine" },
    MiniStarterFooter     = { fg = spec.syntax.const, style = "italic" },
    MiniStarterHeader     = { link = "Title" },
    MiniStarterInactive   = { link = "Comment" },
    MiniStarterItem       = { link = "Normal" },
    MiniStarterItemBullet = { fg = spec.fg3 },
    MiniStarterItemPrefix = { fg = c.pink.base },
    MiniStarterSection    = { fg = c.red.base },
    MiniStarterQuery      = { fg = c.green.base },

    MiniStatuslineDevinfo     = { fg = spec.fg2, bg = spec.bg2 },
    MiniStatuslineFileinfo    = { fg = spec.fg2, bg = spec.bg2 },
    MiniStatuslineFilename    = { link = "StatusLine" },
    MiniStatuslineInactive    = { link = "StatusLineNC" },
    MiniStatuslineModeCommand = { fg = spec.bg0, bg = c.yellow.base,  style = "bold" },
    MiniStatuslineModeInsert  = { fg = spec.bg0, bg = c.green.base,   style = "bold" },
    MiniStatuslineModeNormal  = { fg = spec.bg0, bg = c.cyan.base,    style = "bold" },
    MiniStatuslineModeOther   = { fg = spec.bg0, bg = c.blue.base,    style = "bold" },
    MiniStatuslineModeReplace = { fg = spec.bg0, bg = c.red.base,     style = "bold" },
    MiniStatuslineModeVisual  = { fg = spec.bg0, bg = c.magenta.base, style = "bold" },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent         = { fg = spec.fg2, bg = spec.bg4, style = "bold" },
    MiniTablineFill            = { link = "TabLineFill" },
    MiniTablineHidden          = { fg = spec.fg3, bg = spec.bg2 },
    MiniTablineModifiedCurrent = { fg = spec.bg4, bg = spec.fg2, style = "bold" },
    MiniTablineModifiedHidden  = { fg = spec.bg2, bg = spec.fg3 },
    MiniTablineModifiedVisible = { fg = spec.bg2, bg = spec.fg2 },
    MiniTablineTabpagesection  = { fg = spec.fg1, bg = spec.bg1, style = "bold" },
    MiniTablineVisible         = { fg = spec.fg2, bg = spec.bg2 },

    MiniTestEmphasis = { style = "bold" },
    MiniTestFail     = { fg = c.red.base,   style = "bold" },
    MiniTestPass     = { fg = c.green.base, style = "bold" },

    MiniTrailspace = { bg = c.red.base },
  }
end

return M
