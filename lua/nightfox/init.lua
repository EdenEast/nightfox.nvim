local M = {}

local override = {}

function override.pallets(pallets)
  require("nightfox.override").pallets = pallets
end

function override.specs(specs)
  require("nightfox.override").specs = specs
end

function override.groups(groups)
  require("nightfox.override").groups = groups
end

M.override = override

function M.init(opts)
  require("nightfox.config").set_options(opts)
end

function M.setup(opts)
  if opts.options then
    M.init(opts.options)
  end

  if opts.pallets then
    M.override.pallets(opts.pallets)
  end

  if opts.schemes then
    M.override.schemes(opts.schemes)
  end

  if opts.groups then
    M.override.groups(opts.groups)
  end
end

function M.load(name)
  -- if vim.g.colors_name then
  --   vim.cmd("hi clear")
  -- end

  name = name or require("nightfox.config").fox
  local spec = require("nightfox.spec").load(name)
  local groups = require("nightfox.group").load(spec)
  require("nightfox.lib.highlight").highlight(groups)

  -- local config = require('nightfox.config').options
  -- if config.terminal_colors then
  --   util.set_terminal_colors(spec.pallet)
  -- end

  vim.g.colors_name = spec.pallet.meta.name
  vim.g.termguicolors = true
  vim.cmd([[set background=]] .. (spec.pallet.meta.light and "light" or "dark"))
end

return M
