local Color = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "duskfox",
  light = false,
}

-- stylua: ignore
local pallet = {
  black   = Shade.new("#393552", "#47407d", "#322e42"),
  red     = Shade.new("#eb6f92", "#f083a2", "#d84f76"),
  green   = Shade.new("#a3be8c", "#b1d196", "#8aa872"),
  yellow  = Shade.new("#f6c177", "#f9cb8c", "#e6a852"),
  blue    = Shade.new("#569FBA", "#65b1cd", "#4a869c"),
  magenta = Shade.new("#c4a7e7", "#ccb1ed", "#a580d2"),
  cyan    = Shade.new("#9ccfd8", "#a6dae3", "#7bb8c1"),
  white   = Shade.new("#e0def4", "#e2e0f7", "#b1acde"),
  orange  = Shade.new("#ea9a97", "#f0a4a2", "#d6746f"),
  pink    = Shade.new("#EB98C3", "#f0a6cc", "#d871a6"),

  comment = Color.from_hex("#817c9c"),

  bg0     = Color.from_hex("#191726"), -- Dark bg (status line and float)
  bg1     = Color.from_hex("#232136"), -- Default bg
  bg2     = Color.from_hex("#2D2A45"), -- Lighter bg (colorcolm folds)
  bg3     = Color.from_hex("#373354"), -- Lighter bg (cursor line)
  bg4     = Color.from_hex("#4B4673"), -- Conceal, border fg

  fg0     = Color.from_hex("#EAE8FF"), -- Lighter fg
  fg1     = Color.from_hex("#e0def4"), -- Default fg
  fg2     = Color.from_hex("#D3D1E6"), -- Darker fg (status line)
  fg3     = Color.from_hex("#555169"), -- Darker fg (line numbers, fold colums)

  sel0    = Color.from_hex("#433c59"), -- Popup bg, visual selection bg
  sel1    = Color.from_hex("#2d3a50"), -- Popup sel bg, search bg
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
    comment     = pal.comment,            -- Comment
    conditional = pal.magenta.bright, -- Conditional and loop
    const       = pal.orange.bright,  -- Constants, imports and booleans
    dep         = spec.fg3,           -- Depricated
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
    error = spec.diag.error:shade(-0.75),
    warn  = spec.diag.warn:shade(-0.7),
    info  = spec.diag.info:shade(-0.7),
    hint  = spec.diag.hint:shade(-0.7),
  }

  spec.diff = {
    add    = spec.bg1:blend(pal.green.base, 0.2),
    delete = spec.bg1:blend(pal.red.base, 0.2),
    change = spec.bg1:blend(pal.blue.base, 0.2),
    text   = spec.bg1:blend(pal.blue.base, 0.4),
  }

  spec.git = {
    add     = pal.green.base,
    removed = pal.red.base,
    changed = pal.yellow.base,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, pallet = pallet, generate_spec = generate_spec }
