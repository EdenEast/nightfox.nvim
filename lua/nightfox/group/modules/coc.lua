-- https://github.com/neoclide/coc.nvim

local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax

  return {
    CocInlayHint = { fg = syn.comment, bg = opts.background and spec.bg2 or "NONE" },
  }
end

return M
