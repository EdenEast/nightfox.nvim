-- https://github.com/SmiteshP/nvim-navic

local M = {}

function M.get(spec, config, opts)
  local has_ts = config.modules.treesitter

  -- stylua: ignore
  return {
    NavicText               = { fg = spec.fg1 },
    NavicSeparator          = { fg = spec.bg4 },

    NavicIconsFile          = { link = "Directory" },
    NavicIconsModule        = { link = has_ts and "@namespace" or "Identifier" },
    NavicIconsNamespace     = { link = has_ts and "@namespace" or "Identifier" },
    NavicIconsPackage       = { link = has_ts and "@namespace" or "Identifier" },
    NavicIconsClass         = { link = "Type" },
    NavicIconsMethod        = { link = "Function" },
    NavicIconsProperty      = { link = has_ts and "@property" or "Identifier" },
    NavicIconsField         = { link = has_ts and "@field" or "Identifier" },
    NavicIconsConstructor   = { link = "Function" },
    NavicIconsEnum          = { link = "Constant" },
    NavicIconsInterface     = { link = "Constant" },
    NavicIconsFunction      = { link = "Function" },
    NavicIconsVariable      = { link = has_ts and "@variable" or "Identifier" },
    NavicIconsConstant      = { link = "Constant" },
    NavicIconsString        = { link = "String" },
    NavicIconsNumber        = { link = "Number" },
    NavicIconsBoolean       = { link = "Boolean" },
    NavicIconsObject        = { link = has_ts and "@namespace" or "Identifier" },
    NavicIconsKey           = { link = "Identifier" },
    NavicIconsNull          = { link = "Type" },
    NavicIconsEnumMember    = { link = has_ts and "@field" or "Identifier" },
    NavicIconsStruct        = { link = "Type" },
    NavicIconsEvent         = { link = "Constant" },
    NagicIconsOperator      = { link = "Operator" },
    NavicIconsTypeParameter = { link = has_ts and "@field" or "Identifier" },
  }
end

return M
