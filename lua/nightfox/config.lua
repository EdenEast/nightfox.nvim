local collect = require("nightfox.lib.collect")
local util = require("nightfox.util")

local M = { fox = "nightfox", has_options = false }

local defaults = {
  compile_path = util.join_paths(util.cache_home, "nightfox"),
  compile_file_suffix = "_compiled",
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  styles = {
    comments = "NONE",
    conditionals = "NONE",
    constants = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    operators = "NONE",
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
    aerial = true,
    barbar = true,
    cmp = true,
    dap_ui = true,
    dashboard = true,
    diagnostic = {
      enable = true,
      background = true,
    },
    fern = true,
    fidget = true,
    gitgutter = true,
    gitsigns = true,
    glyph_palette = true,
    hop = true,
    illuminate = true,
    lightspeed = true,
    lsp_saga = true,
    lsp_trouble = true,
    modes = true,
    native_lsp = true,
    neogit = true,
    neotree = true,
    notify = true,
    nvimtree = true,
    pounce = true,
    sneak = true,
    symbol_outline = true,
    telescope = true,
    treesitter = true,
    tsrainbow = true,
    whichkey = true,
  },
}

M.options = collect.deep_copy(defaults)

function M.set_fox(name)
  M.fox = name
end

function M.set_options(opts)
  opts = opts or {}
  M.options = collect.deep_extend(M.options, opts)
  M.has_options = true
end

function M.reset()
  M.options = collect.deep_copy(defaults)
end

return M
