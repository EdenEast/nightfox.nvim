-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- :help neo-tree-highlights

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  -- stylua: ignore
  return {
    NeoTreeNormal             = { fg = spec.fg1, bg = config.transparent and "NONE" or spec.bg0 },
    NeoTreeNormalNC           = { link = "NeoTreeNormal" },
    NeoTreeIndentMarker       = { fg = spec.bg4 },

    NeoTreeRootName           = { fg = c.orange.base, style = "bold" },
    NeoTreeDirectoryName      = { fg = c.blue.base },
    NeoTreeDirectoryIcon      = { fg = c.blue.base },
    NeoTreeDotfile            = { fg = c.blue:subtle() },
    NeoTreeSymbolicLinkTarget = { fg = c.pink:subtle() },
    NeoTreeFileName           = { fg = spec.fg2 },
    NeoTreeFileNameOpened     = { fg = spec.fg1 },
    NeoTreeDimText            = { link = "Conceal" },

    NeoTreeGitModified        = { fg = spec.git.changed },
    NeoTreeGitAdded           = { fg = spec.git.add },
    NeoTreeGitDeleted         = { fg = spec.git.removed },
    NeoTreeGitConflict        = { fg = spec.git.conflict, style = "italic" },
    NeoTreeGitIgnored         = { fg = spec.git.ignored },
    NeoTreeGitUntracked       = { fg = c.magenta:subtle() }
  }
end

return M
