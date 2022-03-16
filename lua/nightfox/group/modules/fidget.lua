-- https://github.com/j-hui/fidget.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    FidgetTitle = { link = "Title" },
    FidgetTask = { link = "LineNr" },
  }
end

return M
