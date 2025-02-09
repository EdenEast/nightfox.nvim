local collect = require("nightfox.lib.collect")
local util = require("nightfox.util")

local M = { fox = "nightfox", has_options = false }

local defaults = {
  compile_path = util.join_paths(util.cache_home, "nightfox"),
  compile_file_suffix = "_compiled",
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  module_default = true,
  colorblind = {
    enable = false,
    simulate_only = false,
    severity = {
      protan = 0,
      deutan = 0,
      tritan = 0,
    },
  },
  styles = {
    comments = "NONE",
    conditionals = "NONE",
    constants = "NONE",
    functions = "NONE",
    keywords = "NONE",
    numbers = "NONE",
    operators = "NONE",
    preprocs = "NONE",
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
    coc = {
      background = true,
    },
    diagnostic = {
      -- This is linked to so much that is needs to be enabled. This is here primarily
      -- for the extra options that can be added with modules
      enable = true,
      background = true,
    },
    native_lsp = {
      enable = util.is_nvim,
      background = true,
    },
    treesitter = util.is_nvim,
    lsp_semantic_tokens = util.is_nvim,
    leap = {
      background = true,
    },
  },
}

M.options = collect.deep_copy(defaults)

M.module_names = {
  "alpha",
  "aerial",
  "barbar",
  "blink",
  "cmp",
  "coc",
  "dap_ui",
  "dashboard",
  "diagnostic",
  "fern",
  "fidget",
  "gitgutter",
  "gitsigns",
  "glyph_palette",
  "hop",
  "illuminate",
  "indent_blankline",
  "lazy",
  "leap",
  "lightspeed",
  "lsp_saga",
  "lsp_semantic_tokens",
  "lsp_trouble",
  "mini",
  "modes",
  "native_lsp",
  "navic",
  "neogit",
  "neotest",
  "neotree",
  "notify",
  "nvimtree",
  "pounce",
  "signify",
  "sneak",
  "symbol_outline",
  "rainbow-delimiters",
  "telescope",
  "treesitter",
  "tsrainbow",
  "tsrainbow2",
  "whichkey",
}

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

function M.get_compiled_info(opts)
  local output_path = opts.output_path or M.options.compile_path
  local file_suffix = opts.file_suffix or M.options.compile_file_suffix
  local style = opts.name or M.fox
  return output_path, util.join_paths(output_path, style .. file_suffix)
end

function M.hash()
  local hash = require("nightfox.lib.hash")(M.options)
  return hash and hash or 0
end

return M
