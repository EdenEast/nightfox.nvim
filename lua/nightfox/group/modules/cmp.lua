-- https://github.com/hrsh7th/nvim-cmp

local M = {}

function M.get(spec, config, opts)
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

    CmpItemKindVariable      = { link = "TSVariable" },
    CmpItemKindConstant      = { link = "TSConstant" },
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

    CmpItemKindModule        = { link = "TSNamespace" },

    CmpItemKindProperty      = { link = "TSProperty" },
    CmpItemKindField         = { link = "TSField" },
    CmpItemKindTypeParameter = { link = "TSField" },
    CmpItemKindEnumMember    = { link = "TSField" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = spec.fg2 },
  }
end

return M
