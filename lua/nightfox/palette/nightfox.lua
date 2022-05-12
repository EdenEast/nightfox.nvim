local Shade = require("nightfox.lib.shade")

local meta = {
  name = "nightfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#393b44", 0.15, -0.15),
  red     = Shade.new("#c94f6d", 0.15, -0.15),
  green   = Shade.new("#81b29a", 0.10, -0.15),
  yellow  = Shade.new("#dbc074", 0.15, -0.15),
  blue    = Shade.new("#719cd6", 0.15, -0.15),
  magenta = Shade.new("#9d79d6", 0.30, -0.15),
  cyan    = Shade.new("#63cdcf", 0.15, -0.15),
  white   = Shade.new("#dfdfe0", 0.15, -0.15),
  orange  = Shade.new("#f4a261", 0.15, -0.15),
  pink    = Shade.new("#d67ad2", 0.15, -0.15),

  comment = "#526176",

  bg0     = "#131a24", -- Dark bg (status line and float)
  bg1     = "#192330", -- Default bg
  bg2     = "#212e3f", -- Lighter bg (colorcolm folds)
  bg3     = "#29394e", -- Lighter bg (cursor line)
  bg4     = "#415166", -- Conceal, border fg

  fg0     = "#d6d6d7", -- Lighter fg
  fg1     = "#cdcecf", -- Default fg
  fg2     = "#aeafb0", -- Darker fg (status line)
  fg3     = "#71839b", -- Darker fg (line numbers, fold colums)

  sel0    = "#223249", -- Popup bg, visual selection bg
  sel1    = "#3a567d", -- Popup sel bg, search bg
}

return { meta = meta, palette = palette }
