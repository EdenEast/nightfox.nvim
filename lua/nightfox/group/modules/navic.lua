-- https://github.com/SmiteshP/nvim-navic

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    NavicText               = { fg = spec.fg1 },
    NavicSeparator          = { fg = spec.bg4 },

    NavicIconsFile          = { link = "Directory" },
    NavicIconsModule        = { link = "TSNamespace" },
    NavicIconsNamespace     = { link = "TSNamespace" },
    NavicIconsPackage       = { link = "TSNamespace" },
    NavicIconsClass         = { link = "Type" },
    NavicIconsMethod        = { link = "Function" },
    NavicIconsProperty      = { link = "TSProperty" },
    NavicIconsField         = { link = "TSField" },
    NavicIconsConstructor   = { link = "Function" },
    NavicIconsEnum          = { link = "Constant" },
    NavicIconsInterface     = { link = "Constant" },
    NavicIconsFunction      = { link = "Function" },
    NavicIconsVariable      = { link = "TSVariable" },
    NavicIconsConstant      = { link = "TSConstant" },
    NavicIconsString        = { link = "String" },
    NavicIconsNumber        = { link = "Number" },
    NavicIconsBoolean       = { link = "Boolean" },
    NavicIconsObject        = { link = "TSNamespace" },
    NavicIconsKey           = { link = "Identifier" },
    NavicIconsNull          = { link = "Type" },
    NavicIconsEnumMember    = { link = "TSField" },
    NavicIconsStruct        = { link = "Type" },
    NavicIconsEvent         = { link = "Constant" },
    NagicIconsOperator      = { link = "Operator" },
    NavicIconsTypeParameter = { link = "TSField" },
  }
end

return M
