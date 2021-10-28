local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()

  -- References:
  -- https://coolors.co/393b44-c94f6d-81b29a-dbc074-719cd6-9d79d6-63cdcf-dfdfe0-f4a261-d67ad2

  -- stylua: ignore
  local colors = {
    meta       = { name = "hybridfox", light = false },

    none       = "NONE",
    bg         = "#1d1f21",

    fg         = "#c5c8c6",
    fg_gutter  = "#42484d",

    black      = "#282a2e",
    red        = "#cc6666",
    green      = "#b5bd68",
    yellow     = "#f0c674",
    blue       = "#81a2be",
    magenta    = "#b294bb",
    cyan       = "#8abeb7",
    white      = "#c5c8c6",
    orange     = "#de935f",
    pink       = "#cf90e0",

    black_br   = "#3d4454",
    red_br     = "#e66767",
    green_br   = "#cbd66b",
    yellow_br  = "#ffc654",
    blue_br    = "#7ab3e6",
    magenta_br = "#ce90e0",
    cyan_br    = "#93d9d0",
    white_br   = "#c7edd4",
    orange_br  = "#ff9447",
    pink_br    = "#e37dff",

    -- -5 brightness -5 saturation
    black_dm   = "#080808",
    red_dm     = "#bf6969",
    green_dm   = "#a9b06a",
    yellow_dm  = "#e3bf78",
    blue_dm    = "#829cb3",
    magenta_dm = "#a792ad",
    cyan_dm    = "#8bb3ad",
    white_dm   = "#b8bab9",
    orange_dm  = "#d19264",
    pink_dm    = "#c592d4",

    comment    = "#707880",

    git = {
      add      = "#5F875F",
      change   = "#5F5F87",
      delete   = "#cc6666",
      conflict = "#c07a6d",
    },

    gitSigns = {
      add    = "#5F875F",
      change = "#5F5F87",
      delete = "#cc6666",
    },
  }

  util.bg = colors.bg

  colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
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
