-- https://github.com/p00f/nvim-ts-rainbow

local M = {}

function M.get(spec, config, opts)
  local c = spec.pallet

  -- stylua: ignore
  return {
    rainboecol1 = { fg = c.red.base },
    rainboecol2 = { fg = c.yellow.base },
    rainboecol3 = { fg = c.green.base },
    rainboecol4 = { fg = c.blue.base },
    rainboecol5 = { fg = c.cyan.base },
    rainboecol6 = { fg = c.magenta.base },
    rainboecol7 = { fg = c.pink.base },
  }
end

return M
