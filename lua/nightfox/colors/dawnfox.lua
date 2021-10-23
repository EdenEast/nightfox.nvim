local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://rosepinetheme.com/palette.html#rose-pine-dawn

  -- stylua: ignore
  local colors = {
    meta       = { name = "dawnfox", light = true },

    none       = "NONE",
    bg         = "#faf4ed",
    bg_alt     = "#EEE8E1",

    fg         = "#575279",
    fg_gutter  = "#ADAFB9",

    -- https://coolors.co/575279-b4637a-618774-ea9d34-286983-907aa9-56949f-e5e9f0-d7827e-D685AF
    black      = "#575279",
    red        = "#b4637a",
    green      = "#618774",
    yellow     = "#ea9d34",
    blue       = "#286983",
    magenta    = "#907aa9",
    cyan       = "#56949f",
    white      = "#e5e9f0",
    orange     = "#d7827e",
    pink       = "#D685AF",

    -- +10 brightness, +10 saturation
    black_br   = "#5F5695",
    red_br     = "#C26D85",
    green_br   = "#629F81",
    yellow_br  = "#EEA846",
    blue_br    = "#2D81A3",
    magenta_br = "#9A80B9",
    cyan_br    = "#5CA7B4",
    white_br   = "#E6EBF3",
    orange_br  = "#DE8C88",
    pink_br    = "#DE8DB7",

    -- -10 brightness, -10 saturation
    black_dm   = "#504C6B",
    red_dm     = "#A5576D",
    green_dm   = "#597668",
    yellow_dm  = "#DD9024",
    blue_dm    = "#295E73",
    magenta_dm = "#816B9A",
    cyan_dm    = "#50848C",
    white_dm   = "#C8CFDE",
    orange_dm  = "#CA6E69",
    pink_dm    = "#C9709E",

    comment = "#9893a5",

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

  colors.bg_visual = util.darken(colors.magenta, 0.2)
  colors.bg_search = util.darken(colors.green, 0.3)
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
