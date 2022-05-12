local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "duskfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#393552", "#47407d", "#322e42"),
  red     = Shade.new("#eb6f92", "#f083a2", "#d84f76"),
  green   = Shade.new("#a3be8c", "#b1d196", "#8aa872"),
  yellow  = Shade.new("#f6c177", "#f9cb8c", "#e6a852"),
  blue    = Shade.new("#569fba", "#65b1cd", "#4a869c"),
  magenta = Shade.new("#c4a7e7", "#ccb1ed", "#a580d2"),
  cyan    = Shade.new("#9ccfd8", "#a6dae3", "#7bb8c1"),
  white   = Shade.new("#e0def4", "#e2e0f7", "#b1acde"),
  orange  = Shade.new("#ea9a97", "#f0a4a2", "#d6746f"),
  pink    = Shade.new("#eb98c3", "#f0a6cc", "#d871a6"),

  comment = "#817c9c",

  bg0     = "#191726", -- Dark bg (status line and float)
  bg1     = "#232136", -- Default bg
  bg2     = "#2d2a45", -- Lighter bg (colorcolm folds)
  bg3     = "#373354", -- Lighter bg (cursor line)
  bg4     = "#4b4673", -- Conceal, border fg

  fg0     = "#eae8ff", -- Lighter fg
  fg1     = "#e0def4", -- Default fg
  fg2     = "#cdcbe0", -- Darker fg (status line)
  fg3     = "#6e6a86", -- Darker fg (line numbers, fold colums)

  sel0    = "#433c59", -- Popup bg, visual selection bg
  sel1    = "#63577d", -- Popup sel bg, search bg
}

local function spec_fn(pal, spec)
  -- stylua: ignore start

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

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, spec_fn = spec_fn }
