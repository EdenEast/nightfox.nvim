-- https://github.com/rcarriga/nvim-notify
local C = require("nightfox.lib.color")

local M = {}

function M.get(spec, config, opts)
  local bg = C(spec.bg1)
  local function border(color, amount)
    amount = amount or 0.5
    return bg:blend(C(color), amount):to_css()
  end

  -- stylua: ignore
  return {
    NotifyERRORBorder = { fg = border(spec.diag.error) },
    NotifyWARNBorder  = { fg = border(spec.diag.warn) },
    NotifyINFOBorder  = { fg = border(spec.diag.info) },
    NotifyDEBUGBorder = { fg = border(spec.diag.hint) },
    NotifyTRACEBorder = { fg = spec.bg4 },

    NotifyERRORTitle = { fg = spec.diag.error },
    NotifyWARNTitle  = { fg = spec.diag.warn },
    NotifyINFOTitle  = { fg = spec.diag.info },
    NotifyDEBUGTitle = { fg = spec.diag.hint },
    NotifyTRACETitle = { fg = spec.syntax.comment },

    NotifyERRORIcon  = { link = "NotifyERRORTitle" },
    NotifyWARNIcon   = { link = "NotifyWARNTitle" },
    NotifyINFOIcon   = { link = "NotifyINFOTitle" },
    NotifyDEBUGIcon  = { link = "NotifyDEBUGTitle" },
    NotifyTRACEIcon  = { link = "NotifyTRACETitle" },
    NotifyBackground = { link = "NormalFloat" },
  }
end

return M
