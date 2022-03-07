local Color = require("nightfox.lib.color")

local M = {}

local function override(spec, ovr)
  local tbl_list = { "syntax", "diag", "diag_bg", "diff", "git" }
  local single_list = { "comment", "bg0", "bg1", "bg2", "bg3", "bg4", "fg0", "fg1", "fg2", "fg3", "sel0", "sel1" }

  for _, name in ipairs(single_list) do
    if ovr[name] then
      spec[name] = type(ovr[name]) == "string" and Color.from_hex(ovr[name]) or ovr[name]
    end
  end

  for _, name in ipairs(tbl_list) do
    if ovr[name] then
      for k, v in pairs(ovr[name]) do
        spec[name][k] = type(v) == "string" and Color.from_hex(v) or v
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
      spec = override(spec, ovr[name])
    end
    spec.pallet = pallet
    return spec
  else
    local result = {}
    local foxes = require("nightfox.pallet").foxes
    for _, mod in ipairs(foxes) do
      print(mod)
      local pallet = require("nightfox.pallet").load(mod)
      local spec = pallet.generate_spec(pallet)
      if ovr[mod] then
        spec = override(spec, ovr[mod])
      end
      spec.pallet = pallet
      result[mod] = spec
    end
    return result
  end
end

return M
