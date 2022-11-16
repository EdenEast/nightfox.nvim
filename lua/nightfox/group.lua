local collect = require("nightfox.lib.collect")

local M = {}

function M.from(spec)
  local color = require("nightfox.lib.color")
  local config = require("nightfox.config")
  local conf = config.options

  local editor = require("nightfox.group.editor").get(spec, conf)
  local syntax = require("nightfox.group.syntax").get(spec, conf)
  local hl = collect.deep_extend(editor, syntax)

  local default_enable_value = conf.module_default
  local mod_names = config.module_names
  for _, name in ipairs(mod_names) do
    local kind = type(conf.modules[name])
    local opts = kind == "boolean" and { enable = conf.modules[name] } or kind == "table" and conf.modules[name] or {}
    opts.enable = opts.enable == nil and default_enable_value or opts.enable

    if opts.enable then
      hl = collect.deep_extend(hl, require("nightfox.group.modules." .. name).get(spec, conf, opts))
    end
  end

  config.on_highlight(spec, hl, spec.palette.meta.name, color)
  return hl
end

function M.load(name)
  name = name or require("nightfox.config").fox
  return M.from(require("nightfox.spec").load(name))
end

return M
