local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "frostfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#393552", "#4b456c", "#272538"),
  red     = Shade.new("#ff8089", "#ff8089", "#e6737b"),
  green   = Shade.new("#56e2c4", "#60fbda", "#4cc8ae"),
  yellow  = Shade.new("#fff38d", "#fff59e", "#e6db7f"),
  blue    = Shade.new("#75beff", "#8ac8ff", "#69abe6"),
  magenta = Shade.new("#c2acff", "#cbb8ff", "#af9be6"),
  cyan    = Shade.new("#79e0ff", "#8de5ff", "#6dcae6"),
  white   = Shade.new("#f1f1f1", "#ffffff", "#d7d7d7"),
  orange  = Shade.new("#ffa500", "#ffb326", "#e69400"),
  pink    = Shade.new("#f5acff", "#f6b8ff", "#dd9be6"),

  comment = "#7f848e",

  bg0     = "#1f2435", -- Dark bg (status line and float)
  bg1     = "#282e44", -- Default bg
  bg2     = "#313853", -- Lighter bg (colorcolm folds)
  bg3     = "#3a4363", -- Lighter bg (cursor line)
  bg4     = "#4c5781", -- Conceal, border fg

  fg0     = "#e3faff", -- Lighter fg
  fg1     = "#fffadf", -- Default fg
  fg2     = "#d9d5bd", -- Darker fg (status line)
  fg3     = "#6e729a", -- Darker fg (line numbers, fold colums)

  sel0    = "#364765", -- Popup bg, visual selection bg
  sel1    = "#47688f", -- Popup sel bg, search bg
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
  }

  spec.diag_bg = {
    error = C(spec.diag.error):shade(-0.75):to_css(),
    warn  = C(spec.diag.warn):shade(-0.7):to_css(),
    info  = C(spec.diag.info):shade(-0.7):to_css(),
    hint  = C(spec.diag.hint):shade(-0.7):to_css(),
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
