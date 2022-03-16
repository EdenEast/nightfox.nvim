-- https://github.com/glepnir/lspsaga.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    LspFloatWinNormal          = { bg = spec.bg0 },
    LspFloatWinBorder          = { fg = spec.fg3 },
    LspSagaBorderTitle         = { link = "Title" },
    LspSagaHoverBorder         = { fg = spec.fg3 },
    LspSagaRenameBorder        = { fg = spec.fg3 },
    LspSagaDefPreviewBorder    = { fg = spec.fg3 },
    LspSagaCodeActionBorder    = { fg = spec.fg3 },
    LspSagaFinderSelection     = { fg = spec.sel0 },
    LspSagaCodeActionTitle     = { link = "Title" },
    LspSagaCodeActionContent   = { link = "String" },
    LspSagaSignatureHelpBorder = { fg = spec.diag.error },
    -- ReferencesCount            = { fg = cp.purple },
    -- DefinitionCount            = { fg = cp.purple },
    -- DefinitionIcon             = { fg = cp.blue },
    -- ReferencesIcon             = { fg = cp.blue },
    -- TargetWord                 = { fg = cp.flamingo },
  }
end

return M
