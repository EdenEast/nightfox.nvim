local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "dayfox",
  light = true,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#1d344f", "#24476f", "#1c2f44", true),
  red     = Shade.new("#b95d76", "#c76882", "#ac5169", true),
  green   = Shade.new("#618774", "#629f81", "#597668", true),
  yellow  = Shade.new("#ba793e", "#ca884a", "#a36f3e", true),
  blue    = Shade.new("#4d688e", "#4e75aa", "#485e7d", true),
  magenta = Shade.new("#8e6f98", "#9f75ac", "#806589", true),
  cyan    = Shade.new("#6ca7bd", "#74b2c9", "#5a99b0", true),
  white   = Shade.new("#cdd1d5", "#cfd6dd", "#b6bcc2", true),
  orange  = Shade.new("#e3786c", "#e8857a", "#d76558", true),
  pink    = Shade.new("#d685af", "#de8db7", "#c9709e", true),

  comment = "#7f848e",

  bg0     = "#dbdbdb", -- Dark bg (status line and float)
  bg1     = "#eaeaea", -- Default bg
  bg2     = "#dbcece", -- Lighter bg (colorcolm folds)
  bg3     = "#ced6db", -- Lighter bg (cursor line)
  bg4     = "#bebebe", -- Conceal, border fg

  fg0     = "#182a40", -- Lighter fg
  fg1     = "#1d344f", -- Default fg
  fg2     = "#233f5e", -- Darker fg (status line)
  fg3     = "#2e537d", -- Darker fg (line numbers, fold colums)
  -- fg3  = "#848f9c", -- Darker fg (line numbers, fold colums)

  sel0    = "#ced5de", -- Popup bg, visual selection bg
  sel1    = "#b6c4d9", -- Popup sel bg, search bg
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
