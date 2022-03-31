-- https://github.com/mvllow/modes.nvim

local M = {}

function M.get(spec, config, opts)
  local pal = spec.palette

  -- stylua: ignore
  return {
    ModesCopy   = { bg = pal.yellow.base },
    ModesDelete = { bg = pal.red.base },
    ModesInsert = { bg = pal.cyan.base },
    ModesVisual = { bg = pal.magenta.base },
  }
end

return M
