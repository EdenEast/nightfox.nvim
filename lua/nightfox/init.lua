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

  if opts.specs then
    M.override.specs(opts.specs)
  end

  if opts.groups then
    M.override.groups(opts.groups)
  end

  require("nightfox.util.deprication").check_deprication(opts)
end

function M.load(name)
  require("nightfox.main").load(name)
end

return M
