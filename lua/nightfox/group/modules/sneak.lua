-- https://github.com/justinmk/vim-sneak

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = spec.bg0, bg = spec.palette.magenta.base },
    SneakScope = { bg = spec.sel0 },
  }
end

return M
