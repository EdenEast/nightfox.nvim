local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "carbonfox",
  light = false,
}

local bg = C("#161616")
local fg = C("#f2f4f8")

-- stylua: ignore
local palette = {
  black   = Shade.new("#282828", 0.15, -0.15),
  red     = Shade.new("#EE5396", 0.15, -0.15),
  green   = Shade.new("#25be6a", 0.15, -0.15), -- #25be6a or #42BE65
  yellow  = Shade.new("#08BDBA", 0.15, -0.15),
  blue    = Shade.new("#78A9FF", 0.15, -0.15),
  magenta = Shade.new("#BE95FF", 0.15, -0.15),
  cyan    = Shade.new("#33B1FF", 0.15, -0.15),
  white   = Shade.new("#dfdfe0", 0.15, -0.15),
  orange  = Shade.new("#3DDBD9", 0.15, -0.15),
  pink    = Shade.new("#FF7EB6", 0.15, -0.15),

  comment = bg:blend(fg, 0.4):to_css(),

  bg0     = bg:brighten(-4):to_css(), -- Dark bg (status line and float)
  bg1     = bg:to_css(), -- Default bg
  bg2     = bg:brighten(6):to_css(), -- Lighter bg (colorcolm folds)
  bg3     = bg:brighten(12):to_css(), -- Lighter bg (cursor line)
  bg4     = bg:brighten(24):to_css(), -- Conceal, border fg

  fg0     = fg:brighten(6):to_css(), -- Lighter fg
  fg1     = fg:to_css(), -- Default fg
  fg2     = fg:brighten(-24):to_css(), -- Darker fg (status line)
  fg3     = fg:brighten(-48):to_css(), -- Darker fg (line numbers, fold colums)

  sel0    = "#2a2a2a", -- Popup bg, visual selection bg
  sel1    = "#525253", -- Popup sel bg, search bg
}

-- palette.sel0 = bg:blend(C(palette.white.base), 0.1):to_css()
-- palette.sel1 = bg:blend(C(palette.white.base), 0.3):to_css()

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
    bracket     = spec.fg2,           -- Brackets and Punctuation
    builtin0    = pal.red.base,       -- Builtin variable
    builtin1    = pal.cyan.bright,    -- Builtin type
    builtin2    = pal.orange.bright,  -- Builtin const
    builtin3    = pal.red.bright,     -- Not used
    comment     = pal.comment,        -- Comment
    conditional = pal.magenta.bright, -- Conditional and loop
    const       = pal.orange.bright,  -- Constants, imports and booleans
    dep         = spec.fg3,           -- Deprecated
    field       = pal.blue.base,      -- Field
    func        = pal.blue.bright,    -- Functions and Titles
    ident       = pal.cyan.base,      -- Identifiers
    keyword     = pal.magenta.base,   -- Keywords
    number      = pal.orange.base,    -- Numbers
    operator    = spec.fg2,           -- Operators
    preproc     = pal.pink.bright,    -- PreProc
    regex       = pal.yellow.bright,  -- Regex
    statement   = pal.magenta.base,   -- Statements
    string      = pal.green.base,     -- Strings
    type        = pal.yellow.base,    -- Types
    variable    = pal.white.base,     -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.magenta.base,
    info  = pal.blue.base,
    hint  = pal.orange.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.15):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.3):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore stop

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
