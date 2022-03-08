-- https://github.com/ggandor/lightspeed.nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    LightspeedGreyWash = { fg = spec.syntax.comment },
  }
end

return M
