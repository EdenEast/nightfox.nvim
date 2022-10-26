-- https://github.com/nvim-neotest/neotest

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    NeotestPassed       = { fg = spec.palette.green.base },
    NeotestFailed       = { fg = spec.diag.error },
    NeotestRunning      = { fg = spec.palette.orange.base },
    NeotestSkipped      = { fg = spec.diag.warn },
    NeotestTest         = { link = 'Normal'},
    NeotestNamespace    = { fg = spec.palette.cyan.dim },
    NeotestMarked       = { fg = spec.fg1, style = 'bold' },
    NeotestFocused      = { style = 'underline' },
    NeotestFile         = { fg = spec.palette.blue.base},
    NeotestDir          = { fg = spec.palette.cyan.base},
    NeotestIndent       = { link = 'Conceal'},
    NeotestExpandMarker = { link = 'Conceal'},
    NeotestAdapterName  = { fg = spec.palette.pink.base, style = 'bold'},
  }
end

return M
