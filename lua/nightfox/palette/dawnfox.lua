local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "dawnfox",
  light = true,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#575279", "#5f5695", "#504c6b", true),
  red     = Shade.new("#b4637a", "#c26d85", "#a5576d", true),
  green   = Shade.new("#618774", "#629f81", "#597668", true),
  yellow  = Shade.new("#ea9d34", "#eea846", "#dd9024", true),
  blue    = Shade.new("#286983", "#2d81a3", "#295e73", true),
  magenta = Shade.new("#907aa9", "#9a80b9", "#816b9a", true),
  cyan    = Shade.new("#56949f", "#5ca7b4", "#50848c", true),
  white   = Shade.new("#e5e9f0", "#e6ebf3", "#c8cfde", true),
  orange  = Shade.new("#d7827e", "#de8c88", "#ca6e69", true),
  pink    = Shade.new("#d685af", "#de8db7", "#c9709e", true),

  comment = "#9893a5",

  bg0     = "#ebe5df", -- Dark bg (status line and float)
  bg1     = "#faf4ed", -- Default bg
  bg2     = "#ebe0df", -- Lighter bg (colorcolm folds)
  bg3     = "#ebdfe4", -- Lighter bg (cursor line)
  bg4     = "#bdbfc9", -- Conceal, border fg

  fg0     = "#4c4769", -- Lighter fg
  fg1     = "#575279", -- Default fg
  fg2     = "#625c87", -- Darker fg (status line)
  fg3     = "#a8a3b3", -- Darker fg (line numbers, fold colums)

  sel0    = "#d0d8d8", -- Popup bg, visual selection bg
  sel1    = "#b8cece", -- Popup sel bg, search bg
}

local function spec_fn(pal, spec)
  -- stylua: ignore start

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.3):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.3):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.3):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.3):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.base), 0.2):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.base), 0.2):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.base), 0.2):to_css(),
    text   = C(spec.bg1):blend(C(pal.blue.base), 0.4):to_css(),
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, spec_fn = spec_fn }
