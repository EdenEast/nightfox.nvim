local util = require("nightfox.util")

local M = {}

function M.setup()
  local colors = {}

  -- References
  -- https://coolors.co/000000-FF7878-AAE682-FFDC96-00B1FF-9696FF-00DCDC-dfdfe0-FFB482-FF50FF

  -- stylua: ignore
  colors = {
    none       = "NONE",
    bg         = "#101E2C",

    fg         = "#BDD2E7",
    fg_gutter  = "#1E4667",

    black      = "#000000",
    red        = "#FF7878",
    green      = "#AAE682",
    yellow     = "#FFDC96",
    blue       = "#00B1FF",
    magenta    = "#9696FF",
    cyan       = "#00DCDC",
    white      = "#dfdfe0",
    orange     = "#FFB482",
    pink       = "#FF50FF",

    -- +20 brightness
    black_br   = "#525252",
    red_br     = "#FFA5A5",
    green_br   = "#C5F0A8",
    yellow_br  = "#FFE7B6",
    blue_br    = "#50CAFF",
    magenta_br = "#B6B6FF",
    cyan_br    = "#3BFFFF",
    white_br   = "#E7E7EE",
    orange_br  = "#FFCCA9",
    pink_br    = "#FF89FF",

    -- -15 brightness, -15 saturation
    black_dm   = "#212121",
    red_dm     = "#F35F5F",
    green_dm   = "#97DB6A",
    yellow_dm  = "#F3C870",
    blue_dm    = "#13A6E5",
    magenta_dm = "#7070F3",
    cyan_dm    = "#11D1D1",
    white_dm   = "#B8B8CE",
    orange_dm  = "#F29D64",
    pink_dm    = "#F044F0",

    comment    = "#647882",

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

  colors.bg_alt = "#1B324A"
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

  return colors
end

return M
