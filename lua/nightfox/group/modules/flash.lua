-- https://github.com/folke/flash.nvim

local M = {}

function M.get(spec, config, opts)
  opts = opts or {}

  -- stylua: ignore
  return {
    FlashBackdrop = { fg = spec.syntax.comment },
    FlashMatch = { link = "Search" },
    FlashCurrent = { link = "IncSearch" },
    FlashLabel = { link = "Substitute" },
    FlashPrompt = { link = "MsgArea" },
    FlashPromptIcon = { link = "Special" },
    FlashCursor = { link = "Cursor" },
  }
end

return M
