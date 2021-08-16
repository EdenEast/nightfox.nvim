local util = require("nightfox.util")

local M = {}

function M.setup(config)
  config = config or require("nightfox.config")

  -- Reference:
  -- https://i.imgur.com/LzJYkpS.jpeg
  -- https://coolors.co/3B4252-BF616A-A3BE8C-EBCB8B-81A1C1-B48EAD-88C0D0-E5E9F0-C9826B-D67AD2

  -- stylua: ignore
  local colors = {
    name       = "nordfox",

    none       = "NONE",
    bg         = "#2E3440",

    fg         = "#b9bfca",
    fg_gutter  = "#4B5668",

    black      = "#3B4252",
    red        = "#BF616A",
    green      = "#A3BE8C",
    yellow     = "#EBCB8B",
    blue       = "#81A1C1",
    magenta    = "#B48EAD",
    cyan       = "#88C0D0",
    white      = "#E5E9F0",
    orange     = "#C9826B",
    pink       = "#BF88BC",

    -- +15 brightness, +15 saturation
    black_br   = "#465780",
    red_br     = "#D06F79",
    green_br   = "#B1D196",
    yellow_br  = "#F0D399",
    blue_br    = "#8CAFD2",
    magenta_br = "#C895BF",
    cyan_br    = "#93CCDC",
    white_br   = "#E7ECF4",
    orange_br  = "#D89079",
    pink_br    = "#D092CE",

    -- -15 brightness, -15 saturation
    black_dm   = "#353A45",
    red_dm     = "#A54E56",
    green_dm   = "#8AA872",
    yellow_dm  = "#D9B263",
    blue_dm    = "#668AAB",
    magenta_dm = "#9D7495",
    cyan_dm    = "#69A7BA",
    white_dm   = "#BBC3D4",
    orange_dm  = "#B46950",
    pink_dm    = "#A96CA5",

    comment    = "#60728A",

    git = {
      add      = "#70a288",
      change   = "#A58155",
      delete   = "#904A6A",
      conflict = "#C07A6D",
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
    text = colors.blue,
  }

  colors.gitSigns = {
    add = util.brighten(colors.gitSigns.add, 0.2),
    change = util.brighten(colors.gitSigns.change, 0.2),
    delete = util.brighten(colors.gitSigns.delete, 0.2),
  }

  colors.git.ignore = colors.black
  colors.black = util.darken(colors.bg, 0.8, "#000000")
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

  util.color_overrides(colors, config)

  return colors
end

return M
