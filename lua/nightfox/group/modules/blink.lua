-- https://github.com/Saghen/blink.cmp
-- Adapted links and colors from groups/modules/cmp.lua

local M = {}

function M.get(spec, config, opts)
  local has_ts = config.modules.treesitter
  local syn = spec.syntax

  -- stylua: ignore
  return {
    BlinkCmpDoc         = { fg = spec.fg1, bg = spec.bg0 },
    BlinkCmpDocBorder   = { fg = spec.sel0, bg = spec.bg0 },

    BlinkCmpLabel              = { fg = spec.fg1, },
    BlinkCmpLabelDeprecated    = { fg = syn.dep, style = "strikethrough" },
    BlinkCmpLabelMatch         = { fg = syn.func, },

    BlinkCmpKindDefault       = { fg = spec.fg2, },
    BlinkCmpLabelDetail       = { link = "Comment" },

    BlinkCmpKindKeyword       = { link = "Identifier" },

    BlinkCmpKindVariable      = { link = has_ts and "@variable" or  "Identifier" },
    BlinkCmpKindConstant      = { link = has_ts and "@constant" or "Constant" },
    BlinkCmpKindReference     = { link = "Keyword" },
    BlinkCmpKindValue         = { link = "Keyword" },

    BlinkCmpKindFunction      = { link = "Function" },
    BlinkCmpKindMethod        = { link = "Function" },
    BlinkCmpKindConstructor   = { link = "Function" },

    BlinkCmpKindInterface     = { link = "Constant" },
    BlinkCmpKindEvent         = { link = "Constant" },
    BlinkCmpKindEnum          = { link = "Constant" },
    BlinkCmpKindUnit          = { link = "Constant" },

    BlinkCmpKindClass         = { link = "Type" },
    BlinkCmpKindStruct        = { link = "Type" },

    BlinkCmpKindModule        = { link = has_ts and "@namespace"  or "Identifier" },

    BlinkCmpKindProperty      = { link = has_ts and "@property" or  "Identifier" },
    BlinkCmpKindField         = { link = has_ts and "@field" or "Identifier" },
    BlinkCmpKindTypeParameter = { link = has_ts and "@field" or "Identifier" },
    BlinkCmpKindEnumMember    = { link = has_ts and "@field" or "Identifier" },
    BlinkCmpKindOperator      = { link = "Operator" },
    BlinkCmpKindSnippet       = { fg = spec.fg2 },
  }
end

return M
