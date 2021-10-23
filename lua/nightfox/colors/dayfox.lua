local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://github.com/Rashad-707/rhombuses/tree/c147ffdcc1
  -- https://github.com/Rashad-707/dotfiles/tree/df5ac6b

  -- stylua: ignore
  local colors = {
    meta       = { name = "dayfox", light = true },

    none       = "NONE",
    bg         = "#EAEAEA",

    fg         = "#1D344F",
    fg_gutter  = "#AAACB3",

    black      = "#1d344f",
    red        = "#B95D76",
    green      = "#618774",
    yellow     = "#BA793E",
    blue       = "#6080b0",
    magenta    = "#8e6f98",
    cyan       = "#6CA7BD",
    white      = "#cdd1d5",
    orange     = "#E3786C",
    pink       = "#D685AF",

    -- +10 brightness, +10 saturation
    black_br   = "#24476F",
    red_br     = "#C76882",
    green_br   = "#629F81",
    yellow_br  = "#CA884A",
    blue_br    = "#678ABF",
    magenta_br = "#9F75AC",
    cyan_br    = "#74B2C9",
    white_br   = "#CFD6DD",
    orange_br  = "#E8857A",
    pink_br    = "#DE8DB7",

    -- -10 brightness, -10 saturation
    black_dm   = "#1C2F44",
    red_dm     = "#AC5169",
    green_dm   = "#597668",
    yellow_dm  = "#A36f3E",
    blue_dm    = "#54729F",
    magenta_dm = "#806589",
    cyan_dm    = "#5A99B0",
    white_dm   = "#B6BCC2",
    orange_dm  = "#D76558",
    pink_dm    = "#C9709E",

    comment    = "#7F848E",

    git = {
      add      = "#70a288",
      change   = "#a58155",
      delete   = "#904a6a",
      conflict = "#c07a6d",
    },

    gitSigns = {
      add    = "#164846",
      change = "#394b70",
      delete = "#823c41",
    },
  }

  util.bg = colors.bg

  colors.bg_alt = "#D8D8D8" -- "#DBDFE2"
  colors.bg_highlight = util.darken(colors.bg, 0.90, "#000000")

  colors.fg_alt = util.lighten(colors.fg, 0.85, "#ffffff")

  colors.diff = {
    add = util.darken(colors.green, 0.15),
    delete = util.darken(colors.red, 0.15),
    change = util.darken(colors.blue, 0.15),
    text = util.darken(colors.blue, 0.4),
  }

  colors.gitSigns = {
    add = util.brighten(colors.gitSigns.add, 0.2),
    change = util.brighten(colors.gitSigns.change, 0.2),
    delete = util.brighten(colors.gitSigns.delete, 0.2),
  }

  colors.git.ignore = colors.black
  colors.border_highlight = colors.blue
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_alt
  colors.bg_statusline = colors.bg_alt

  colors.bg_sidebar = colors.bg_alt
  colors.bg_float = colors.bg_alt

  colors.bg_visual = util.darken(colors.blue, 0.2)
  colors.bg_search = util.darken(colors.cyan, 0.3)
  colors.fg_sidebar = colors.fg_alt

  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.cyan

  colors.variable = colors.white

  return colors
end

-- Returns the completed colors with the overrides from the configuration
-- @param config table
function M.load(config)
  config = config or require("nightfox.config").options

  local colors = M.init()
  util.color_overrides(colors, config)

  return colors
end

return M
