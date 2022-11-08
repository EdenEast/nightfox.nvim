-- https://github.com/kyazdani42/nvim-tree.lua

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette
  local image = spec.palette.meta.light and c.black:subtle() or c.white:subtle()

  -- stylua: ignore
  return {
    NvimTreeNormal           = { fg = spec.fg1, bg = config.transparent and "NONE" or spec.bg0 },
    NvimTreeVertSplit        = { link = "VertSplit" },
    NvimTreeIndentMarker     = { fg = spec.bg4 },

    NvimTreeRootFolder       = { fg = c.orange.base, style = "bold" },
    NvimTreeFolderName       = { fg = c.blue.base },
    NvimTreeFolderIcon       = { fg = c.blue.base },
    NvimTreeOpenedFolderName = { fg = c.blue:harsh() },
    NvimTreeEmptyFolderName  = { fg = spec.syntax.dep },
    NvimTreeSymlink          = { fg = c.pink:subtle() },
    NvimTreeSpecialFile      = { fg = c.cyan.base },
    NvimTreeImageFile        = { fg = image },
    NvimTreeOpenedFile       = { fg = c.pink:harsh() }, -- TODO: not working

    NvimTreeGitDeleted       = { fg = spec.git.removed },
    NvimTreeGitDirty         = { fg = spec.git.changed},
    NvimTreeGitMerge         = { fg = spec.git.conflict, },
    NvimTreeGitNew           = { fg = spec.git.add },
    NvimTreeGitRenamed       = { link = "NvimTreeGitDeleted" },
    NvimTreeGitStaged        = { link = "NvimTreeGitStaged" },
  }
end

return M
