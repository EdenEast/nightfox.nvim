local Color = require("nightfox.lib.color")

return function(style)
  local config = require("nightfox.config").options
  local s = require("nightfox.spec").load(style)
  local p = s.palette
  local base = Color.from_hex(s.bg0)
  local tbg = config.transparent and "NONE" or s.bg0

  local function fade(color, amount)
    amount = amount or 0.3
    return base:blend(Color.from_hex(color), amount):to_css()
  end

  return {
    normal = {
      a = { bg = p.blue.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.blue.base), fg = s.fg1 },
      c = { bg = tbg, fg = s.fg2 },
    },

    insert = {
      a = { bg = p.green.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.green.base), fg = s.fg1 },
    },

    command = {
      a = { bg = p.yellow.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.yellow.base), fg = s.fg1 },
    },

    visual = {
      a = { bg = p.magenta.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.magenta.base), fg = s.fg1 },
    },

    replace = {
      a = { bg = p.red.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.red.base), fg = s.fg1 },
    },

    terminal = {
      a = { bg = p.orange.base, fg = s.bg0, gui = "bold" },
      b = { bg = fade(p.orange.base), fg = s.fg1 },
    },

    inactive = {
      a = { bg = tbg, fg = p.blue.base },
      b = { bg = tbg, fg = s.fg3, gui = "bold" },
      c = { bg = tbg, fg = s.syntax.comment },
    },
  }
end
