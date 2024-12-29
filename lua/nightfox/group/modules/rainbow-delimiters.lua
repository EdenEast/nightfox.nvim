-- https://github.com/HiPhish/rainbow-delimiters.nvim

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    RainbowDelimiterBlue = { fg = c.blue.base },
    RainbowDelimiterCyan = { fg = c.cyan.base },
    RainbowDelimiterGreen = { fg = c.green.base },
    RainbowDelimiterOrange = { fg = c.orange.base },
    RainbowDelimiterRed = { fg = c.red.base },
    RainbowDelimiterPurple = { fg = c.magenta.base },
    RainbowDelimiterYellow = { fg = c.yellow.base },
  }
end

return M
