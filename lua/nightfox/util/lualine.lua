local Color = require("nightfox.lib.color")

return function(style)
  local spec = require("nightfox.spec").load(style)
  local pal = spec.palette
  local bg = Color.from_hex(spec.bg0)
  local fg = spec.fg2

  local function generate_mode(opts)
    local amount = opts.amount or 0.3
    local fade = opts.bg and bg:blend(Color.from_hex(opts.bg), amount):to_css() or "NONE"
    local b = bg:to_css()
    local f = fg

    return {
      a = { bg = opts.bg or "NONE", fg = b, gui = "bold" },
      b = { bg = fade, fg = f },
      c = { bg = b, fg = opts.fg or f },
    }
  end

  return {
    normal = generate_mode({ bg = pal.blue.base }),
    insert = generate_mode({ bg = pal.green.base }),
    terminal = generate_mode({ bg = pal.orange.base }),
    command = generate_mode({ bg = pal.yellow.base }),
    visual = generate_mode({ bg = pal.magenta.base }),
    replace = generate_mode({ bg = pal.red.base }),
    inactive = generate_mode({ fg = spec.fg3 }),
  }
end
