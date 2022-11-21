local collect = require("nightfox.lib.collect")
local template = require("nightfox.util.template")

local M = {}

local function override(groups, spec, ovr)
  ovr = template.parse(ovr, spec)
  return collect.deep_extend(groups, ovr)
end

function M.from(spec)
  local ovr = require("nightfox.override").groups
  local config = require("nightfox.config").options

  if not spec then
    print("there is no spec")
  end
  local editor = require("nightfox.group.editor").get(spec, config)
  local syntax = require("nightfox.group.syntax").get(spec, config)

  local result = collect.deep_extend(editor, syntax)

  local default_enable_value = config.module_default
  local mod_names = require("nightfox.config").module_names
  for _, name in ipairs(mod_names) do
    local kind = type(config.modules[name])
    local opts = kind == "boolean" and { enable = config.modules[name] }
      or kind == "table" and config.modules[name]
      or {}
    opts.enable = opts.enable == nil and default_enable_value or opts.enable

    if opts.enable then
      result = collect.deep_extend(result, require("nightfox.group.modules." .. name).get(spec, config, opts))
    end
  end

  local function apply_ovr(key, groups)
    return ovr[key] and override(groups, spec, ovr[key]) or groups
  end

  result = apply_ovr("all", result)
  result = apply_ovr(spec.palette.meta.name, result)

  return result
end

function M.load(name)
  name = name or require("nightfox.config").fox
  return M.from(require("nightfox.spec").load(name))
end

return M
