local util = require("nightfox.util")

local M = {}

-- Return the initial colors of the colorscheme. This is the default defined colors
-- without the color overrides from the configuration.
function M.init()

  -- References:
  -- https://coolors.co/393b44-c94f6d-81b29a-dbc074-719cd6-9d79d6-63cdcf-dfdfe0-f4a261-d67ad2

  -- stylua: ignore
  local colors = {
    name       = "nightfox",
    light      = false,

    none       = "NONE",
    bg         = "#192330",

    fg         = "#cdcecf",
    fg_gutter  = "#3b4261",

    black      = "#393b44",
    red        = "#c94f6d",
    green      = "#81b29a",
    yellow     = "#dbc074",
    blue       = "#719cd6",
    magenta    = "#9d79d6",
    cyan       = "#63cdcf",
    white      = "#dfdfe0",
    orange     = "#f4a261",
    pink       = "#d67ad2",

    black_br   = "#7f8c98",
    red_br     = "#d6616b",
    green_br   = "#58cd8b",
    yellow_br  = "#ffe37e",
    blue_br    = "#84cee4",
    magenta_br = "#b8a1e3",
    cyan_br    = "#59f0ff",
    white_br   = "#f2f2f2",
    orange_br  = "#f6a878",
    pink_br    = "#df97db",

    -- -15 brightness -15 saturation
    black_dm   = "#32343b",
    red_dm     = "#ad425c",
    green_dm   = "#689c83",
    yellow_dm  = "#c7a957",
    blue_dm    = "#5483c1",
    magenta_dm = "#835dc1",
    cyan_dm    = "#4ab8ba",
    white_dm   = "#bdbdc0",
    orange_dm  = "#e28940",
    pink_dm    = "#c15dbc",

    comment    = "#526175",

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
