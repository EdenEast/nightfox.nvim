local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "duskfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#2b2d35", 0.15, -0.15),
  red     = Shade.new("#B6776B", 0.15, -0.15),
  green   = Shade.new("#4CA585", 0.15, -0.15),
  yellow  = Shade.new("#D9C679", 0.15, -0.15),
  blue    = Shade.new("#6173D1", 0.15, -0.15),
  magenta = Shade.new("#CEA37F", 0.15, -0.15),
  cyan    = Shade.new("#60C1D2", 0.15, -0.15),
  white   = Shade.new("#DDDCD3", 0.15, -0.15),
  orange  = Shade.new("#D88E78", 0.15, -0.15),
  pink    = Shade.new("#588E9A", 0.15, -0.15),

  comment = "#817c9c",

  bg0     = "#192330",-- Dark bg (status line and float)
  bg1     = "#1d2a39", -- Default bg
  bg2     = "#212e3f", -- Lighter bg (colorcolm folds)
  bg3     = "#29394f", -- Lighter bg (cursor line)
  bg4     = "#39506d", -- Conceal, border fg

  fg0     = "#DDDCD3", -- Lighter fg
  fg1     = "#A6A6A2", -- Default fg
  fg2     = "#B9B9B5", -- Darker fg (status line)
  fg3     = "#71839b", -- Darker fg (line numbers, fold colums)

  sel0    = "#2b3b51", -- Popup bg, visual selection bg
  sel1    = "#58658A", -- Popup sel bg, search bg
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
    bracket     = spec.fg2,           -- Brackets and Punctuation
    builtin0    = pal.blue.dim,       -- Builtin variable
    builtin1    = pal.red.dim,    -- Builtin type
    builtin2    = pal.blue.dim,  -- Builtin const
    builtin3    = pal.green.dim,     -- Not used
    comment     = pal.comment,        -- Comment
    conditional = pal.magenta.dim, -- Conditional and loop
    const       = pal.blue.base,  -- Constants, imports and booleans
    dep         = spec.fg3,           -- Deprecated
    field       = pal.magenta.dim,      -- Field
    func        = pal.green.base,    -- Functions and Titles
    ident       = pal.cyan.base,      -- Identifiers
    keyword     = pal.magenta.base,   -- Keywords
    number      = pal.cyan.dim,    -- Numbers
    operator    = spec.fg2,           -- Operators
    preproc     = pal.magenta.bright,    -- PreProc
    regex       = pal.blue.bright,  -- Regex
    statement   = pal.magenta.base,   -- Statements
    string      = pal.cyan.base,     -- Strings
    type        = pal.red.base,    -- Types
    variable    = pal.yellow.bright,     -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
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
