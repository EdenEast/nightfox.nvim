local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://github.com/Rashad-707/rhombuses
  -- https://coolors.co/1d344f-c98093-7ca198-CE8D52-6080b0-8e6f98-6ca8cf-cdd1d5-EE896D-D685AF

  -- stylua: ignore
  local colors = {
    meta       = { name = "dayfox", light = true },

    none       = "NONE",
    bg         = "#EEEFF1",

    fg         = "#1D344F",
    fg_gutter  = "#B9BCC2",

    black      = "#1d344f",
    red        = "#c98093",
    green      = "#7ca198",
    yellow     = "#CE8D52",
    blue       = "#6080b0",
    magenta    = "#8e6f98",
    cyan       = "#6ca8cf",
    white      = "#cdd1d5",
    orange     = "#EE896D",
    pink       = "#D685AF",

    -- +10 brightness, +10 saturation
    black_br   = "#24476F",
    red_br     = "#D48A9D",
    green_br   = "#82B2A6",
    yellow_br  = "#D8985C",
    blue_br    = "#678ABF",
    magenta_br = "#9F75AC",
    cyan_br    = "#77B2D9",
    white_br   = "#CFD6DD",
    orange_br  = "#F29379",
    pink_br    = "#DE8DB7",

    -- -10 brightness, -10 saturation
    black_dm   = "#1C2F44",
    red_dm     = "#BB6F83",
    green_dm   = "#6F9289",
    yellow_dm  = "#C07E41",
    blue_dm    = "#54729F",
    magenta_dm = "#806589",
    cyan_dm    = "#5A99C2",
    white_dm   = "#B6BCC2",
    orange_dm  = "#E27456",
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

  colors.bg_alt = "#DBDFE2"
  colors.bg_highlight = util.darken(colors.bg, 0.95, "#000000")

  colors.fg_alt = util.lighten(colors.fg, 0.65)

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

  colors.harsh = colors.black
  colors.subtle = colors.white
  colors.harsh_br = colors.black_br
  colors.subtle_br = colors.light_br

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
