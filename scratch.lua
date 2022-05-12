require("nightfox.util.reload")()
local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")
local nightfox = require("nightfox")
local name = "testfox"

nightfox.register(name, {
  black = Shade.new("#333333", 0.15, -0.15),
  red = Shade.new("#aa0000", 0.15, -0.15),
  green = Shade.new("#00aa00", 0.10, -0.15),
  yellow = Shade.new("#aaaa00", 0.15, -0.15),
  blue = Shade.new("#0000aa", 0.15, -0.15),
  magenta = Shade.new("#aa55aa", 0.30, -0.15),
  cyan = Shade.new("#00aaaa", 0.15, -0.15),
  white = Shade.new("#aaaaaa", 0.15, -0.15),
  orange = Shade.new("#aa5500", 0.15, -0.15),
  pink = Shade.new("#aa00aa", 0.15, -0.15),

  comment = "#526176",

  bg0 = "#171717", -- Dark bg (status line and float)
  bg1 = "#777777", -- Default bg
  bg2 = "#282828", -- Lighter bg (colorcolm folds)
  bg3 = "#343434", -- Lighter bg (cursor line)
  bg4 = "#404040", -- Conceal, border fg

  fg0 = "#d6d6d7", -- Lighter fg
  fg1 = "#cdcecf", -- Default fg
  fg2 = "#aeafb0", -- Darker fg (status line)
  fg3 = "#71839b", -- Darker fg (line numbers, fold colums)

  sel0 = "#223249", -- Popup bg, visual selection bg
  sel1 = "#3a567d", -- Popup sel bg, search bg
})

vim.g.nightfox_debug = true
require("nightfox.config").set_fox(name)
require("nightfox.main").load()
vim.cmd("doautoall ColorScheme")
