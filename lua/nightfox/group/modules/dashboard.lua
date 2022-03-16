-- https://github.com/glepnir/dashboard-nvim

local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    DashboardShortCut = { link = "Identifier" },
    DashboardHeader   = { link = "Title" },
    DashboardCenter   = { link = "String" },
    DashboardFooter   = { fg = spec.syntax.const, style = "italic" },
  }
end

return M
