-- https://github.com/lambdalisue/glyph-palette.vim/

local M = {}

function M.get(spec, config, opts)
  local c = spec.pallet

  -- stylua: ignore
  return {
    GlyphPallet0  = { fg = c.black.base },
    GlyphPallet1  = { fg = c.red.base },
    GlyphPallet2  = { fg = c.green.base },
    GlyphPallet3  = { fg = c.yellow.base },
    GlyphPallet4  = { fg = c.blue.base },
    GlyphPallet5  = { fg = c.magenta.base },
    GlyphPallet6  = { fg = c.cyan.base },
    GlyphPallet7  = { fg = c.white.bright },
    GlyphPallet8  = { fg = c.black.bright },
    GlyphPallet9  = { fg = c.red.bright },
    GlyphPallet10 = { fg = c.green.bright },
    GlyphPallet11 = { fg = c.yellow.bright },
    GlyphPallet12 = { fg = c.blue.bright },
    GlyphPallet13 = { fg = c.magenta.bright },
    GlyphPallet14 = { fg = c.cyan.bright },
    GlyphPallet15 = { fg = c.white.bright },
  }
end

return M
