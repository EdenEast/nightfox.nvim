-- https://github.com/SmiteshP/nvim-navic

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    NavicText               = { fg = spec.fg1 },
    NavicSeparator          = { fg = spec.bg4 },

    NavicIconsFile          = { link = "Directory" },
    NavicIconsModule        = { link = "@namespace" },
    NavicIconsNamespace     = { link = "@namespace" },
    NavicIconsPackage       = { link = "@namespace" },
    NavicIconsClass         = { link = "Type" },
    NavicIconsMethod        = { link = "Function" },
    NavicIconsProperty      = { link = "@property" },
    NavicIconsField         = { link = "@field" },
    NavicIconsConstructor   = { link = "Function" },
    NavicIconsEnum          = { link = "Constant" },
    NavicIconsInterface     = { link = "Constant" },
    NavicIconsFunction      = { link = "Function" },
    NavicIconsVariable      = { link = "@variable" },
    NavicIconsConstant      = { link = "Constant" },
    NavicIconsString        = { link = "String" },
    NavicIconsNumber        = { link = "Number" },
    NavicIconsBoolean       = { link = "Boolean" },
    NavicIconsObject        = { link = "@namespace" },
    NavicIconsKey           = { link = "Identifier" },
    NavicIconsNull          = { link = "Type" },
    NavicIconsEnumMember    = { link = "@field" },
    NavicIconsStruct        = { link = "Type" },
    NavicIconsEvent         = { link = "Constant" },
    NagicIconsOperator      = { link = "Operator" },
    NavicIconsTypeParameter = { link = "@field" },
  }
end

return M
