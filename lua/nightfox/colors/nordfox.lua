local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://i.imgur.com/LzJYkpS.jpeg
  -- https://coolors.co/3b4252-bf616a-a3be8c-ebcb8b-81a1c1-b48ead-88c0d0-e5e9f0-c9826b-d67ad2

  -- stylua: ignore
  local colors = {
    meta       = { name = "nordfox", light = false },

    none       = "NONE",
    bg         = "#2e3440",

    fg         = "#b9bfca",
    fg_gutter  = "#4b5668",

    black      = "#3b4252",
    red        = "#bf616a",
    green      = "#a3be8c",
    yellow     = "#ebcb8b",
    blue       = "#81a1c1",
    magenta    = "#b48ead",
    cyan       = "#88c0d0",
    white      = "#e5e9f0",
    orange     = "#c9826b",
    pink       = "#bf88bc",

    -- +15 brightness, +15 saturation
    black_br   = "#465780",
    red_br     = "#d06f79",
    green_br   = "#b1d196",
    yellow_br  = "#f0d399",
    blue_br    = "#8cafd2",
    magenta_br = "#c895bf",
    cyan_br    = "#93ccdc",
    white_br   = "#e7ecf4",
    orange_br  = "#d89079",
    pink_br    = "#d092ce",

    -- -15 brightness, -15 saturation
    black_dm   = "#353a45",
    red_dm     = "#a54e56",
    green_dm   = "#8aa872",
    yellow_dm  = "#d9b263",
    blue_dm    = "#668aab",
    magenta_dm = "#9d7495",
    cyan_dm    = "#69a7ba",
    white_dm   = "#bbc3d4",
    orange_dm  = "#b46950",
    pink_dm    = "#a96ca5",

    comment    = "#60728a",

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

  colors.bg_alt = "#232831"
  colors.bg_highlight = util.brighten(colors.bg, 0.10)

  colors.fg_alt = util.darken(colors.fg, 0.80, "#000000")

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

  colors.harsh = colors.white
  colors.subtle = colors.black
  colors.harsh_br = colors.white_br
  colors.subtle_br = colors.black_br

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
