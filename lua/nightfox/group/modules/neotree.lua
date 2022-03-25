-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.get(spec, config, opts)
  local c = spec.pallet

  -- stylua: ignore
  return {
    NeoTreeNormal           = { fg = spec.fg1, bg = config.transparent and "NONE" or spec.bg0 },
    NeoTreeIndentMarker     = { fg = spec.bg4 },

    NeoTreeRootName       = { fg = c.orange.base, style = "bold" },
    NeoTreeDirectoryName       = { fg = c.blue.base },
    NeoTreeDirectoryIcon       = { fg = c.blue.base },
    NeoTreeSymbolicLinkTarget          = { fg = c.pink:subtle() },
    NeoTreeFileNameOpened       = { fg = c.pink:harsh() }, -- TODO: not working

    NeoTreeGitModified         = { fg = spec.git.changed },
    NeoTreeGitAdded           = { fg = spec.git.add },
    NeoTreeGitDeleted       = { fg = spec.git.removed },
  }
end

return M
