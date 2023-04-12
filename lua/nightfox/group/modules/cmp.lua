-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(spec, config, opts)
  local has_ts = config.modules.treesitter
  local syn = spec.syntax

  -- stylua: ignore
  return {
    CmpDocumentation         = { fg = spec.fg1, bg = spec.bg0 },
    CmpDocumentationBorder   = { fg = spec.sel0, bg = spec.bg0 },

    CmpItemAbbr              = { fg = spec.fg1, },
    CmpItemAbbrDeprecated    = { fg = syn.dep, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = syn.func, },
    CmpItemAbbrMatchFuzzy    = { fg = syn.func, },

    CmpItemKindDefault       = { fg = spec.fg2, },
    CmpItemMenu              = { link = "Comment" },

    CmpItemKindKeyword       = { link = "Identifier" },

    CmpItemKindVariable      = { link = has_ts and "@variable" or  "Identifier" },
    CmpItemKindConstant      = { link = has_ts and "@constant" or "Constant" },
    CmpItemKindReference     = { link = "Keyword" },
    CmpItemKindValue         = { link = "Keyword" },

    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Function" },

    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },

    CmpItemKindClass         = { link = "Type" },
    CmpItemKindStruct        = { link = "Type" },

    CmpItemKindModule        = { link = has_ts and "@namespace"  or "Identifier" },

    CmpItemKindProperty      = { link = has_ts and "@property" or  "Identifier" },
    CmpItemKindField         = { link = has_ts and "@field" or "Identifier" },
    CmpItemKindTypeParameter = { link = has_ts and "@field" or "Identifier" },
    CmpItemKindEnumMember    = { link = has_ts and "@field" or "Identifier" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = spec.fg2 },
  }
end

return M
