-- https://github.com/echasnovski/mini.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    MiniCompletionActiveParameter = { style = "underline" },

    MiniCursorword        = { link = "LspReferenceText" },
    MiniCursorwordCurrent = { link = "LspReferenceText" },

    MiniIndentscopeSymbol = { link = "Delimiter" },
    MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

    MiniJump = { fg = spec.bg0, bg = c.magenta.base },

    MiniJump2dSpot = { fg = c.cyan.base, style = "bold" },

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
