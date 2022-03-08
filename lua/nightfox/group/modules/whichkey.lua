-- https://github.com/folke/which-key.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    WhichKey          = { link = "Identifier" },
    WhichKeyGroup     = { link = "Function" },
    WhichKeyDesc      = { link = "Keyword" },
    WhichKeySeperator = { link = "Comment" },
    WhichKeySeparator = { link = "Comment" },
    WhichKeyFloat     = { bg = spec.bg0 },
    WhichKeyValue     = { link = "Comment" },
  }
end

return M
