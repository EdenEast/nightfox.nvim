local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://rosepinetheme.com/palette.html

  -- stylua: ignore
  local colors = {
    meta       = { name = "duskfox", light = false },

    none       = "NONE",
    bg         = "#232136",
    bg_alt     = "#1F1D2E",

    fg         = "#e0def4",
    fg_gutter  = "#555169",

    -- https://coolors.co/393552-eb6f92-ea9a97-f6c177-569FBA-c4a7e7-9ccfd8-e0def4-EB8595-EB98C3
    black      = "#393552",
    red        = "#eb6f92",
    green      = "#ea9a97",
    yellow     = "#f6c177",
    blue       = "#569FBA",
    magenta    = "#c4a7e7",
    cyan       = "#9ccfd8",
    white      = "#e0def4",
    orange     = "#EB8595",
    pink       = "#EB98C3",

    -- +10 brightness, +10 saturation
    black_br   = "#433C6E",
    red_br     = "#EF7C9D",
    green_br   = "#EDA19E",
    yellow_br  = "#F8C886",
    blue_br    = "#5FABC7",
    magenta_br = "#C8AEEB",
    cyan_br    = "#A3D6DF",
    white_br   = "#E1DFF6",
    orange_br  = "#EF8F9D",
    pink_br    = "#EEA1C9",

    -- -10 brightness, -10 saturation
    black_dm   = "#333047",
    red_dm     = "#E36387",
    green_dm   = "#E18380",
    yellow_dm  = "#EEB76A",
    blue_dm    = "#519EBA",
    magenta_dm = "#B290DF",
    cyan_dm    = "#8CC7D1",
    white_dm   = "#C1BDEA",
    orange_dm  = "#E47585",
    pink_dm    = "#E284B5",

    comment    = "#817c9c",

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

  colors.bg_highlight = util.brighten(colors.bg, 0.10)

  colors.fg_alt = util.darken(colors.fg, 0.85, "#000000")

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
