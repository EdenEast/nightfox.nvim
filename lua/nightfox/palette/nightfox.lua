local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "nightfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#393b44", 0.15, -0.15),
  red     = Shade.new("#c94f6d", 0.15, -0.15),
  green   = Shade.new("#81b29a", 0.10, -0.15),
  yellow  = Shade.new("#dbc074", 0.15, -0.15),
  blue    = Shade.new("#719cd6", 0.15, -0.15),
  magenta = Shade.new("#9d79d6", 0.30, -0.15),
  cyan    = Shade.new("#63cdcf", 0.15, -0.15),
  white   = Shade.new("#dfdfe0", 0.15, -0.15),
  orange  = Shade.new("#f4a261", 0.15, -0.15),
  pink    = Shade.new("#d67ad2", 0.15, -0.15),

  comment = "#738091",

  bg0     = "#131a24", -- Dark bg (status line and float)
  bg1     = "#192330", -- Default bg
  bg2     = "#212e3f", -- Lighter bg (colorcolm folds)
  bg3     = "#29394f", -- Lighter bg (cursor line)
  bg4     = "#39506d", -- Conceal, border fg

  fg0     = "#d6d6d7", -- Lighter fg
  fg1     = "#cdcecf", -- Default fg
  fg2     = "#aeafb0", -- Darker fg (status line)
  fg3     = "#71839b", -- Darker fg (line numbers, fold colums)

  sel0    = "#2b3b51", -- Popup bg, visual selection bg
  sel1    = "#3c5372", -- Popup sel bg, search bg
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
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.2):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.2):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.2):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.2):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.2):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.2):to_css(),
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
