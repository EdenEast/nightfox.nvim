local Color = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "dawnfox",
  light = true,
}

-- stylua: ignore
local pallet = {
  black   = Shade.new("#575279", "#5F5695", "#504C6B", true),
  red     = Shade.new("#b4637a", "#C26D85", "#A5576D", true),
  green   = Shade.new("#618774", "#629F81", "#597668", true),
  yellow  = Shade.new("#ea9d34", "#EEA846", "#DD9024", true),
  blue    = Shade.new("#286983", "#2D81A3", "#295E73", true),
  magenta = Shade.new("#907aa9", "#9A80B9", "#816B9A", true),
  cyan    = Shade.new("#56949f", "#5CA7B4", "#50848C", true),
  white   = Shade.new("#e5e9f0", "#E6EBF3", "#C8CFDE", true),
  orange  = Shade.new("#d7827e", "#DE8C88", "#CA6E69", true),
  pink    = Shade.new("#D685AF", "#DE8DB7", "#C9709E", true),

  comment = Color.from_hex("#9893a5"),

  bg0     = Color.from_hex("#EBE5DF"), -- Dark bg (status line and float)
  bg1     = Color.from_hex("#faf4ed"), -- Default bg
  bg2     = Color.from_hex("#EBE0DF"), -- Lighter bg (colorcolm folds)
  bg3     = Color.from_hex("#EBDFE4"), -- Lighter bg (cursor line)
  bg4     = Color.from_hex("#BDBFC9"), -- Conceal, border fg

  fg0     = Color.from_hex("#4C4769"), -- Lighter fg
  fg1     = Color.from_hex("#575279"), -- Default fg
  fg2     = Color.from_hex("#625C87"), -- Darker fg (status line)
  fg3     = Color.from_hex("#a8a3b3"), -- Darker fg (line numbers, fold colums)

  sel0    = Color.from_hex("#d0d8d8"), -- Popup bg, visual selection bg
  sel1    = Color.from_hex("#b8cece"), -- Popup sel bg, search bg
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
    comment     = pal.comment,          -- Comment
    conditional = pal.magenta.dim,  -- Conditional and loop
    const       = pal.orange.dim,   -- Constants, imports and booleans
    dep         = spec.fg3,         -- Depricated
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
  }

  spec.diag_bg = {
    error = spec.bg1:blend(spec.diag.error, 0.3),
    warn  = spec.bg1:blend(spec.diag.warn, 0.3),
    info  = spec.bg1:blend(spec.diag.info, 0.3),
    hint  = spec.bg1:blend(spec.diag.hint, 0.3),
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
