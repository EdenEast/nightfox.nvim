local M = {}

function M.get(spec)
  local p = spec.palette
  return {
    terminal_color_0 = p.black.base,
    terminal_color_8 = p.black.bright,

    terminal_color_1 = p.red.base,
    terminal_color_9 = p.red.bright,

    terminal_color_2 = p.green.base,
    terminal_color_10 = p.green.bright,

    terminal_color_3 = p.yellow.base,
    terminal_color_11 = p.yellow.bright,

    terminal_color_4 = p.blue.base,
    terminal_color_12 = p.blue.bright,

    terminal_color_5 = p.magenta.base,
    terminal_color_13 = p.magenta.bright,

    terminal_color_6 = p.cyan.base,
    terminal_color_14 = p.cyan.bright,

    terminal_color_7 = p.white.base,
    terminal_color_15 = p.white.bright,
  }
end

return M
