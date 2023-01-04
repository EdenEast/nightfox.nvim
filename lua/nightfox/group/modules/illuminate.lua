-- https://github.com/RRethy/vim-illuminate

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    illuminatedWordText  = { link = "LspReferenceText" },
    illuminatedWordRead  = { link = "LspReferenceText" },
    illuminatedWordWrite = { link = "LspReferenceText" },
  }
end

return M
