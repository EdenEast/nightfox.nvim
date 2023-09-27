local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "dayfox",
  light = true,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#352c24", 0.15, -0.15, true),
  red     = Shade.new("#a5222f", 0.15, -0.15, true),
  green   = Shade.new("#396847", 0.15, -0.15, true),
  yellow  = Shade.new("#AC5402", 0.15, -0.15, true),
  blue    = Shade.new("#2848a9", 0.15, -0.15, true),
  magenta = Shade.new("#6e33ce", 0.15, -0.15, true),
  cyan    = Shade.new("#287980", 0.15, -0.15, true),
  white   = Shade.new("#f2e9e1", 0.15, -0.15, true),
  orange  = Shade.new("#955f61", 0.15, -0.15, true),
  pink    = Shade.new("#a440b5", 0.15, -0.15, true),

  comment = "#837a72",

  bg0     = "#e4dcd4", -- Dark bg (status line and float)
  bg1     = "#f6f2ee", -- Default bg
  bg2     = "#dbd1dd", -- Lighter bg (colorcolm folds)
  bg3     = "#d3c7bb", -- Lighter bg (cursor line)
  bg4     = "#aab0ad", -- Conceal, border fg

  fg0     = "#302b5d", -- Lighter fg
  fg1     = "#3d2b5a", -- Default fg
  fg2     = "#643f61", -- Darker fg (status line)
  fg3     = "#824d5b", -- Darker fg (line numbers, fold colums)

  sel0    = "#e7d2be", -- Popup bg, visual selection bg
  sel1    = "#a4c1c2", -- Popup sel bg, search bg
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,  -- Dark bg (status line and float)
    bg1  = pal.bg1,  -- Default bg
    bg2  = pal.bg2,  -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3,  -- Lighter bg (cursor line)
    bg4  = pal.bg4,  -- Conceal, border fg

    fg0  = pal.fg0,  -- Lighter fg
    fg1  = pal.fg1,  -- Default fg
    fg2  = pal.fg2,  -- Darker fg (status line)
    fg3  = pal.fg3,  -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,         -- Brackets and Punctuation
    builtin0    = pal.red.base,     -- Builtin variable
    builtin1    = pal.cyan.dim,     -- Builtin type
    builtin2    = pal.orange.dim,   -- Builtin const
    builtin3    = pal.red.dim,      -- Not used
    comment     = pal.comment,      -- Comment
    conditional = pal.magenta.dim,  -- Conditional and loop
    const       = pal.orange.dim,   -- Constants, imports and booleans
    dep         = spec.fg3,         -- Deprecated
    field       = pal.blue.base,    -- Field
    func        = pal.blue.dim,     -- Functions and Titles
    ident       = pal.cyan.base,    -- Identifiers
    keyword     = pal.magenta.base, -- Keywords
    number      = pal.orange.base,  -- Numbers
    operator    = spec.fg2,         -- Operators
    preproc     = pal.pink.dim,     -- PreProc
    regex       = pal.yellow.dim,   -- Regex
    statement   = pal.magenta.base, -- Statements
    string      = pal.green.base,   -- Strings
    type        = pal.yellow.base,  -- Types
    variable    = pal.black.base,   -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.3):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.3):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.3):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.3):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.3):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.base), 0.2):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.base), 0.2):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.base), 0.2):to_css(),
    text   = C(spec.bg1):blend(C(pal.blue.base), 0.4):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
