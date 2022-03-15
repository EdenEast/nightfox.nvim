local collect = require("nightfox.lib.collect")
local util = require("nightfox.util")

local M = { fox = "nightfox", checked_deprication = false, has_options = false }

M.options = {
  compile_path = util.join_paths(vim.fn.stdpath("cache"), "nightfox"),
  compile_file_suffix = "_compiled",
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
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
  modules = {
    barbar = true,
    cmp = true,
    dashboard = true,
    diagnostic = {
      enable = true,
      background = true,
    },
    fern = true,
    fidget = true,
    gitgutter = true,
    gitsigns = true,
    glyph_pallet = true,
    hop = true,
    illuminate = true,
    lightspeed = true,
    lsp_saga = true,
    lsp_trouble = true,
    native_lsp = true,
    neogit = true,
    nvimtree = true,
    sneak = true,
    symbol_outline = true,
    telescope = true,
    treesitter = true,
    tsrainbow = true,
    whichkey = true,
  },
}

function M.set_fox(name)
  M.fox = name
end

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

return M
