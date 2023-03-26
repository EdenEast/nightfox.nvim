-- https://github.com/goolord/alpha-nvim

local M = {}

function M.get(spec, _, _)
  -- stylua: ignore
  return {
    AlphaShortcut = { fg = spec.palette.orange.base },
    AlphaHeader = { fg = spec.palette.blue:harsh() },
    AlphaHeaderLabel = { fg = spec.palette.orange.base },
    AlphaFooter = { fg = spec.palette.blue.base },
    AlphaButtons = { fg = spec.palette.cyan.base },
  }
end

return M
