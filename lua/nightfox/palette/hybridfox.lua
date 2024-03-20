local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "hybridfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#282a2e", "#3d4454", "#080808"),
  red     = Shade.new("#cc6666", "#e66767", "#bf6969"),
  green   = Shade.new("#b5bd68", "#cbd66b", "#a9b06a"),
  yellow  = Shade.new("#f0c674", "#ffc654", "#e3bf78"),
  blue    = Shade.new("#81a2be", "#7ab3e6", "#829cb3"),
  magenta = Shade.new("#b294bb", "#ce90e0", "#a792ad"),
  cyan    = Shade.new("#8abeb7", "#93d9d0", "#8bb3ad"),
  white   = Shade.new("#c5c8c6", "#707880", "#b8bab9"),
  orange  = Shade.new("#de935f", "#ff9447", "#d19264"),
  pink    = Shade.new("#cf90e0", "#e37dff", "#c592d4"),

  comment = "#707880",

  bg0     = "#161719", -- Dark bg (status line and float)
  bg1     = "#1d1f21", -- Default bg
  bg2     = "#585c63", -- Lighter bg (colorcolm folds)
  bg3     = "#282a2e", -- Lighter bg (cursor line)
  bg4     = "#707880", -- Conceal, border fg

  fg0     = "#d6d6d7", -- Lighter fg
  fg1     = "#c5c8c6", -- Default fg
  fg2     = "#aeafb0", -- Darker fg (status line)
  fg3     = "#42484d", -- Darker fg (line numbers, fold colums)

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
    func        = pal.blue.base,      -- Functions and Titles
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
    error = C(spec.bg1):blend(C(spec.diag.error), 0.2):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.2):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.2):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.2):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.2):to_css(),
  }

  spec.git = {
    add      = "#5F875F",
    removed  = "#cc6666",
    changed  = "#5F5F87",
    conflict = "#c07a6d",
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
