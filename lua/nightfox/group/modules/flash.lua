-- https://github.com/folke/flash.nvim

local M = {}

function M.get(spec, config, opts)
  opts = opts or {}
  local c = spec.palette

  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.pink.base },
    FlashMatch = { link = "Search" },
    FlashCurrent = { link = "IncSearch" },
    FlashLabel = { link = "Substitute" },
    FlashPrompt = { link = "MsgArea" },
    FlashPromptIcon = { fg = "#ffffff", bg = c.pink.base, bold = true  },
    FlashCursor = { link = "Cursor" },
  }
end

return M
