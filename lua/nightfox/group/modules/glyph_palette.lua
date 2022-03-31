-- https://github.com/lambdalisue/glyph-palette.vim/

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    GlyphPalette0  = { fg = c.black.base },
    GlyphPalette1  = { fg = c.red.base },
    GlyphPalette2  = { fg = c.green.base },
    GlyphPalette3  = { fg = c.yellow.base },
    GlyphPalette4  = { fg = c.blue.base },
    GlyphPalette5  = { fg = c.magenta.base },
    GlyphPalette6  = { fg = c.cyan.base },
    GlyphPalette7  = { fg = c.white.bright },
    GlyphPalette8  = { fg = c.black.bright },
    GlyphPalette9  = { fg = c.red.bright },
    GlyphPalette10 = { fg = c.green.bright },
    GlyphPalette11 = { fg = c.yellow.bright },
    GlyphPalette12 = { fg = c.blue.bright },
    GlyphPalette13 = { fg = c.magenta.bright },
    GlyphPalette14 = { fg = c.cyan.bright },
    GlyphPalette15 = { fg = c.white.bright },
  }
end

return M
