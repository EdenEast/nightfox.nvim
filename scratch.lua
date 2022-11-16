require("nightfox").setup({
  options = {},
  on_palette = function(palette, name, color)
    if name == "nightfox" then
      local red = color.new("#ff0000")
      palette.red.base = red:to_css()
      palette.red.bright = red:brighten(10):to_css()
      palette.red.dim = red:lighten(-10):to_css()
    elseif name == "dayfox" then
      local shade = require("nightfox.lib.shade")
      palette.blue = shade.new("#0000ff", 0.15, -0, 15)
    elseif name == "terafox" then
      palette.green.base = "#00ff00"
    end
  end,
  on_spec = function(spec, name, color)
    local p = spec.palette
    -- Note: Only overrding a single value as setting syntax to a new table would remove other values
    spec.syntax.operator = p.orange.base
    spec.syntax.builtin0 = p.pink.bright
    spec.syntax.builtin1 = p.cyan:harsh() -- bright for dark themes and dim for light
    spec.syntax.builtin2 = p.yellow:subtle() -- dim for dark themes and bright for light
  end,
  on_highlight = function(spec, hl, name, color)
    local p = spec.palette
    hl.TelescopeBorder = { fg = spec.bg4 }
    hl.TelescopeTitle = { fg = spec.fg2, bg = spec.bg4 }

    hl.CmpItemKindFunction = { fg = p.magenta.base }
    hl.CmpItemKindMethod = { fg = p.magenta.base }
    hl.CmpWindowBorder = { fg = spec.bg0, bg = spec.bg0 }

    hl["@attribute"] = { link = "Constant" }
  end,
})
