local Color = require("nightfox.lib.color")
local template = require('nightfox.util.template')

local M = {}

local function override(spec, pallet, ovr)
  ovr = template.parse(ovr, pallet)
  local tbl_list = { "syntax", "diag", "diag_bg", "diff", "git" }
  local single_list = { "comment", "bg0", "bg1", "bg2", "bg3", "bg4", "fg0", "fg1", "fg2", "fg3", "sel0", "sel1" }

  for _, name in ipairs(single_list) do
    if ovr[name] then
      local value = ovr[name]
      spec[name] = type(value) == "table" and value:to_css() or value
    end
  end

  for _, name in ipairs(tbl_list) do
    if ovr[name] then
      for k, v in pairs(ovr[name]) do
        spec[name][k] = type(v) == "table" and v:to_css() or v
      end
    end
  end

  return spec
end

function M.load(name)
  local ovr = require("nightfox.override").specs

  if name then
    local pallet = require("nightfox.pallet").load(name)
    local spec = pallet.generate_spec(pallet)
    if ovr[name] then
      spec = override(spec,pallet, ovr[name])
    end
    spec.pallet = pallet
    return spec
  else
    local result = {}
    local foxes = require("nightfox.pallet").foxes
    for _, mod in ipairs(foxes) do
      local pallet = require("nightfox.pallet").load(mod)
      local spec = pallet.generate_spec(pallet)
      if ovr[mod] then
        spec = override(spec, pallet, ovr[mod])
      end
      spec.pallet = pallet
      result[mod] = spec
    end
    return result
  end
end

return M