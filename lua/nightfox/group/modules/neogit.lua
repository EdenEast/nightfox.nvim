-- https://github.com/TimUntersberger/neogit

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = spec.diag.warn },
    NeogitRemote               = { fg = spec.diag.hint },

    NeogitHunkHeader           = { fg = spec.diag.info, bg = spec.bg3 },
    NeogitHunkHeaderHighlight  = { fg = spec.diag.info, bg = spec.sel0 },

    NeogitDiffAdd              = { fg = spec.git.add },
    NeogitDiffDelete           = { fg = spec.git.removed },

    NeogitDiffAddHighlight     = { bg = spec.diff.add },
    NeogitDiffDeleteHighlight  = { bg = spec.diff.delete },
    NeogitDiffContextHighlight = { bg = spec.bg2 },

    NeogitNotificationInfo     = { fg = spec.diag.info },
    NeogitNotificationWarning  = { fg = spec.diag.warn },
    NeogitNotificationError    = { fg = spec.diag.error },
  }
end

return M
