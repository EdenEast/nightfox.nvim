local collect = require("nightfox.lib.collect")

local M = {}

M.options = {
  transparent = false,
  terminal_colors = true,
  alt_nc = false,
  styles = {
    comments = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    strings = "NONE",
    types = "NONE",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = false,
    search = false,
  },
}

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
end

return M
