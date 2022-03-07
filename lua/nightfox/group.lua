local collect = require("nightfox.lib.collect")

local M = {}

function M.load(spec)
  local ovr = require("nightfox.override").groups
  local config = require("nightfox.config").options

  local editor = require("nightfox.group.editor").get(spec, config)
  local syntax = require("nightfox.group.syntax").get(spec, config)

  local result = collect.deep_extend(editor, syntax)

  for name, opts in pairs(config.modules or {}) do
    if type(opts) == "table" then
      if opts.enable then
        result = collect.deep_extend(result, require("nightfox.group.modules." .. name).get(spec, config, opts))
      end
    else
      if opts then
        result = collect.deep_extend(result, require("nightfox.group.modules." .. name).get(spec, config, {}))
      end
    end
  end

  return result
end

return M
