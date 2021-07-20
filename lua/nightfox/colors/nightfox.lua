local util = require("nightfox.util")

local M = {}

function M.setup(config)
  local colors = {}

  --Some color ideas
  -- https://coolors.co/f94144-f3722c-f8961e-f9c74f-90be6d-43aa8b-577590
  -- https://coolors.co/233d4d-fe7f2d-fcca46-a1c181-619b8a
  -- https://coolors.co/f79256-fbd1a2-7dcfb6-00b2ca-1d4e89
  -- https://coolors.co/264653-2a9d8f-e9c46a-f4a261-e76f51
  -- https://coolors.co/f4f1de-e07a5f-3d405b-81b29a-f2cc8f
  -- https://coolors.co/e63946-f1faee-a8dadc-457b9d-1d3557
  colors = {
    none = "NONE",
    bg = "#192330",
    -- bg = "#1A2026",
    -- comment = "#50514F",
    -- bg = "#1A1A1A",

    fg = "#DEDFE0",
    fg_alt = "#B0B3B6",
    fg_gutter = "#3b4261",

    blue = "#719cd6",
    black = "#393b44",
    cyan = "#63cdcf",
    green = "#81B29A",
    magenta = "#9D79D6",
    orange = "#F4A261",
    pink = "#D67AD2",
    red = "#c94f6d",
    yellow = "#dbc074",
    white = "#dfdfe0",

    blue_br = "#84CEE4",
    black_br = "#7f8c98",
    cyan_br = "#59F0FF",
    green_br = "#58cd8b",
    magenta_br = "#B8A1E3",
    orange_br = "#F6A878",
    pink_br = "#DF97DB",
    red_br = "#D6616B",
    yellow_br = "#FFE37E",
    white_br = "#F2F2F2",

    comment = "#526175",

    -- blue = "#719cd6",
    -- cyan = "#7FE4D2",
    -- green = "#94CF95",
    -- magenta = "#CD84C8",
    -- orange = "#F4A261",
    -- pink = "#CCAACC",
    -- red = "#F692B2",
    -- yellow = "#fbdf90",

    -- comment = "#565f89",
    -- dark3 = "#545c7e",
    -- dark5 = "#737aa2",
    -- blue0 = "#3d59a1",
    -- blue = "#7aa2f7",
    -- cyan = "#7dcfff",
    -- magenta = "#bb9af7",
    -- magenta2 = "#ff007c",
    -- purple = "#9d7cd8",
    -- orange = "#ff9e64",
    -- yellow = "#e0af68",
    -- green = "#9ece6a",
    -- green1 = "#73daca",
    -- green2 = "#41a6b5",
    -- teal = "#1abc9c",
    -- red = "#f7768e",
    -- red1 = "#db4b4b",
    git = {
      change = "#6183bb",
      add = "#449dab",
      delete = "#914c54",
      conflict = "#bb7a61",
    },
    gitSigns = {
      add = "#164846",
      change = "#394b70",
      delete = "#823c41",
    },
  }
  util.bg = colors.bg
  -- util.day_brightness = config.dayBrightness

  colors.bg_alt = util.darken(colors.bg, 0.10)
  colors.bg_highlight = util.brighten(colors.bg, 0.10)

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
  colors.bg_sidebar = colors.bg
  colors.bg_float = colors.bg

  colors.bg_visual = util.darken(colors.blue, 0.9)
  colors.bg_search = util.darken(colors.blue, 0.4)
  colors.fg_sidebar = colors.fg_alt

  colors.error = colors.red
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.cyan

  colors.variable = colors.white

  return colors
end

return M
