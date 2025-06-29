-- https://github.com/folke/flash.nvim

local M = {}

function M.get(spec, config, opts)
  opts = opts or {}
  local c = spec.palette

  -- stylua: ignore
  return {
    FlashBackdrop = { fg = spec.syntax.comment },
    FlashMatch = { link = "Search" },
    FlashCurrent = { link = "IncSearch" },
    FlashLabel = { fg = c.white.bright, bg = c.pink.base, bold = true },
    FlashPrompt = { link = "MsgArea" },
    FlashPromptIcon = { link = "Special" },
    FlashCursor = { link = "Cursor" },
  }
end

return M
