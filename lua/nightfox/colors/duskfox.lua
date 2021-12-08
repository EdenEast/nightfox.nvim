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

    -- https://coolors.co/393552-eb6f92-a3be8c-f6c177-569FBA-c4a7e7-9ccfd8-e0def4-ea9a97-EB98C3
    black      = "#393552",
    red        = "#eb6f92",
    green      = "#a3be8c",
    yellow     = "#f6c177",
    blue       = "#569FBA",
    magenta    = "#c4a7e7",
    cyan       = "#9ccfd8",
    white      = "#e0def4",
    orange     = "#ea9a97",
    pink       = "#EB98C3",

    -- +15 brightness, +15 saturation
    black_br   = "#47407d",
    red_br     = "#f083a2",
    green_br   = "#b1d196",
    yellow_br  = "#f9cb8c",
    blue_br    = "#65b1cd",
    magenta_br = "#ccb1ed",
    cyan_br    = "#a6dae3",
    white_br   = "#e2e0f7",
    orange_br  = "#f0a4a2",
    pink_br    = "#f0a6cc",

    -- -15 brightness, -15 saturation
    black_dm   = "#322e42",
    red_dm     = "#d84f76",
    green_dm   = "#8aa872",
    yellow_dm  = "#e6a852",
    blue_dm    = "#4a869c",
    magenta_dm = "#a580d2",
    cyan_dm    = "#7bb8c1",
    white_dm   = "#b1acde",
    orange_dm  = "#d6746f",
    pink_dm    = "#d871a6",

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
