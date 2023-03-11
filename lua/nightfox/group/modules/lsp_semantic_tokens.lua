-- https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight

local M = {}

function M.get(spec, config, opts)
  return {
    -- LSP Semantic token highlight groups
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.interface"] = { link = "@interface" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.function.defaultLibrary"] = { link = "Special" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  }
end

return M
