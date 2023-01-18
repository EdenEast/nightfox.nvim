-- https://github.com/HiPhish/nvim-ts-rainbow2

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    TSRainbowBlue = { fg = c.blue.base },
    TSRainbowCyan = { fg = c.cyan.base },
    TSRainbowGreen = { fg = c.green.base },
    TSRainbowOrange = { fg = c.orange.base },
    TSRainbowRed = { fg = c.red.base },
    TSRainbowViolet = { fg = c.magenta.base },
    TSRainbowYellow = { fg = c.yellow.base },
  }
end

return M
