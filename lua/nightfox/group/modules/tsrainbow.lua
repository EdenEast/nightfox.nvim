-- https://github.com/p00f/nvim-ts-rainbow

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    rainbowcol1 = { fg = c.red.base },
    rainbowcol2 = { fg = c.yellow.base },
    rainbowcol3 = { fg = c.green.base },
    rainbowcol4 = { fg = c.blue.base },
    rainbowcol5 = { fg = c.cyan.base },
    rainbowcol6 = { fg = c.magenta.base },
    rainbowcol7 = { fg = c.pink.base },
  }
end

return M
