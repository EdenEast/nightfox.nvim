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
    FlashLabel = { link = "Substitute" },
    FlashPrompt = { fg = "#ffffff", bg = c.pink.base, bold = true  },
    FlashPromptIcon = { fg = "#ffffff", bg = c.pink.base, bold = true  },
    FlashCursor = { fg = "#ffffff", bg = c.pink.base, bold = true  },
  }
end

return M
