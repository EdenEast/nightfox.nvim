local Color = require("nightfox.lib.color")
local collect = require("nightfox.lib.collect")

local M = {}

M.foxes = {
  "dawnfox",
  "dayfox",
  "duskfox",
  "nightfox",
  "nordfox",
}

local function override(color, ovr)
  local color_list = { "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white", "orange", "pink" }
  local single_list = { "comment", "bg0", "bg1", "bg2", "bg3", "bg4", "fg0", "fg1", "fg2", "fg3", "sel0", "sel1" }

  for _, name in ipairs(color_list) do
    if ovr[name] then
      if type(ovr[name]) == "string" then
        color[name].base = ovr[name]
      else
        for k, v in pairs(ovr[name]) do
          color[name][k] = type(v) == "table" and v:to_css() or v
        end
      end
    end
  end

  for _, name in ipairs(single_list) do
    if ovr[name] then
      local v = ovr[name]
      color[name] = type(v) == "table" and v:to_css() or v
    end
  end
end

function M.load(name)
  local ovr = require("nightfox.override").pallets

  if name then
    local valid = collect.contains(M.foxes, name)
    local raw = valid and require("nightfox.pallet." .. name) or require("nightfox.pallet.nightfox")
    local pallet = ovr[name] and override(raw.pallet, ovr[name]) or raw.pallet
    pallet.meta = raw.meta
    pallet.generate_spec = raw.generate_spec
    return pallet
  else
    local result = {}
    for _, mod in ipairs(M.foxes) do
      local raw = require("nightfox.pallet." .. mod)
      local pallet = ovr[mod] and override(raw.pallet, ovr[mod]) or raw.pallet
      pallet.meta = raw.meta
      pallet.generate_spec = raw.generate_spec
      result[mod] = pallet
    end
    return result
  end
end

return M
