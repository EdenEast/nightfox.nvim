local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()
  -- Reference:
  -- https://coolors.co/3b3a32-f1756f-6de874-f0e656-a381ff-ff87b1-7ef5b8-c7b7c7-f5b87f-ffb8d1

  -- stylua: ignore
  local colors = {
    meta        = { name = "palefox", light = true },

    none        = "NONE",
    bg          = "#3d3f52",

    fg          = "#f8f8f2",
    fg_gutter   = "#5a5475",

    black       = "#3b3a32",
    red         = "#f1756f",
    green       = "#6de874",
    yellow      = "#f0e656",
    blue        = "#a381ff",
    magenta     = "#ff87b1",
    cyan        = "#7ef5b8",
    white       = "#c7b7c7",
    orange      = "#f5b87f",
    pink        = "#ffb8d1",

    -- +15 brightness, -15 saturation
    -- black_br = "#685868",
    black_br    = "#9c97ac",
    red_br      = "#ff9f9a",
    green_br    = "#7bfa81",
    yellow_br   = "#ffea00",
    blue_br     = "#c5a3ff",
    magenta_br  = "#ffb8d1",
    cyan_br     = "#c2ffdf",
    white_br    = "#ffefff",
    orange_br   = "#efc39a",
    pink_br     = "#fbc7d9",

    -- -15 brightness, -15 saturation
    black_dm    = "#31302a",
    red_dm      = "#df534c",
    green_dm    = "#4dd554",
    yellow_dm   = "#b4990f",
    blue_dm     = "#7e55f0",
    magenta_dm  = "#f1588e",
    cyan_dm     = "#59e49c",
    white_dm    = "#ac99ac",
    orange_dm   = "#e49c59",
    pink_dm     = "#f57fa9",

    comment     = "#6f6b80",

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

  colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
  colors.bg_highlight = util.brighten(colors.bg, 0.10)

  colors.fg_alt = util.darken(colors.fg, 0.70, "#000000")

  colors.diff = {
    add = util.darken(colors.green, 0.15),
    delete = util.darken(colors.red, 0.15),
    change = util.darken(colors.blue, 0.15),
    text = util.darken(colors.blue, 0.5),
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

  -- Sidebar and Floats are configurable
  -- colors.bg_sidebar = config.darkSidebar and colors.bg_alt or colors.bg
  -- colors.bg_float = config.darkFloat and colors.bg_alt or colors.bg
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
