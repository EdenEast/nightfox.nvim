-- https://github.com/ibhagwan/fzf-lua
local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  return {
    FzfLuaBorder        = { link = "FloatBorder" },
    FzfLuaTitle         = { link = "FloatBorder" },
    FzfLuaDirPart       = { link = "FloatTitle" },
    FzfLuaFzfCursorLine = { link = "Visual" },
    FzfLuaFzfSeparator  = { link = "Comment" },
    FzfLuaPath          = { link = "Directory" },
    FzfLuaPreviewTitle  = { link = "IncSearch" },
    FzfLuaFzfMatch      = { link = "CursorLine" },
    FzfLuaFzfPrompt     = { fg = c.blue },
    FzfLuaPathColNr     = { fg = c.blue },
    FzfLuaPathLineNr    = { fg = c.green },
    FzfLuaBufName       = { fg = c.magenta },
    FzfLuaBufNr         = { fg = c.yellow },
    FzfLuaBufFlagCur    = { fg = c.orange },
    FzfLuaBufFlagAlt    = { fg = c.blue },
    FzfLuaTabTitle      = { fg = c.green },
    FzfLuaTabMarker     = { fg = c.yellow },
    FzfLuaLiveSym       = { fg = c.orange },
  }
end

return M
