-- https://gitlab.com/HiPhish/rainbow-delimiters.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    RainbowDelimiterRed = { fg = c.red.base },
    RainbowDelimiterYellow = { fg = c.yellow.base },
    RainbowDelimiterBlue = { fg = c.blue.base },
    RainbowDelimiterOrange = { fg = c.orange.base },
    RainbowDelimiterGreen = { fg = c.green.base },
    RainbowDelimiterViolet = { fg = c.pink.base },
    RainbowDelimiterCyan = { fg = c.cyan.base },
  }
end

return M
