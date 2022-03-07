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

return M
