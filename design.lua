local nightfox = {}

-- local Color = require('nightfox.lib.color')
-- local Shade = require('nightfox.lib.shade')

local options = {
  styles = { comments = "italic" },
  inverse = { match_paren = true },
  integration = { sneak = false },
}

local color = {
  black   = Shade.from_hex("#393b44", 0.15, -0.15),
  red     = Shade.from_hex("#c94f6d", 0.15, -0.15),
  green   = Shade.from_hex("#81b29a", 0.10, -0.15),
  yellow  = Shade.from_hex("#dbc074", 0.15, -0.15),
  blue    = Shade.from_hex("#719cd6", 0.15, -0.15),
  magenta = Shade.from_hex("#9d79d6", 0.30, -0.15),
  cyan    = Shade.from_hex("#63cdcf", 0.15, -0.15),
  white   = Shade.from_hex("#dfdfe0", 0.15, -0.15),
  orange  = Shade.from_hex("#f4a261", 0.15, -0.15),
  pink    = Shade.from_hex("#d67ad2", 0.15, -0.15),

  comment = Color.from_hex("#526176")

  bg0 = Color.from_hex("#131a24"), -- Dark bg (status line and float)
  bg1 = Color.from_hex("#192330"), -- Default bg
  bg2 = Color.from_hex("#212e3f"), -- Lighter bg (colorcolm folds)
  bg3 = Color.from_hex("#29394e"), -- Lighter bg (cursor line)
  bg4 = Color.from_hex("#3c4b5e"), -- Conceal, border fg

  fg0 = Color.from_hex("#D6D6D7"), -- Lighter fg
  fg1 = Color.from_hex("#cdcecf"), -- Default fg
  fg2 = Color.from_hex("#aeafb0"), -- Darker fg (status line)
  fg3 = Color.from_hex("#71839b"), -- Darker fg (line numbers, fold colums)

  sel0 = Color.from_hex("#223249"), -- Popup bg, visual selection bg
  sel1 = Color.from_hex("#3a567d"), -- Popup sel bg, search bg
}

local scheme = {
  gradiant = {},
  syntax = {},
  diag = {}
  diag_bg = {}
  diff = {}
  git = {}
}

local overrides = {
  all = {

  },
  nightfox = {
    color = {
      blue = "#0000ff",
      green = { base = "#990000", bright = "#dd0000" },
    },
    gradient = {
      bg1 = "#123456",
    },
  },
}



nightfox.init(options)
nightfox.override_pallets(pallet)
nightfox.override_schemes(pallet)
nightfox.override_groups(pallet)


nightfox.init(options)
nightfox.pallets(pallet)
nightfox.redefine(scheme)
nightfox.remap(groups)

nightfox.setup(options = options, pallets = pallets, schemes = schemes, remaps = remaps )

