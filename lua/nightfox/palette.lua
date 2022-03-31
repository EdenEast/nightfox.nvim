local collect = require("nightfox.lib.collect")

--#region Types

---@class PaletteMeta
---@field name string
---@field light boolean

---@class Palette
---@field meta PaletteMeta
---@field black Shade
---@field red Shade
---@field green Shade
---@field yellow Shade
---@field blue Shade
---@field magenta Shade
---@field cyan Shade
---@field white Shade
---@field orange Shade
---@field pink Shade
---@field comment string
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field sel0 string
---@field sel1 string

--#endregion

local M = {}

M.foxes = {
  "dawnfox",
  "dayfox",
  "duskfox",
  "nightfox",
  "nordfox",
  "terafox",
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
  local ovr = require("nightfox.override").palettes

  if name then
    local valid = collect.contains(M.foxes, name)
    local raw = valid and require("nightfox.palette." .. name) or require("nightfox.palette.nightfox")
    local palette = ovr[name] and override(raw.palette, ovr[name]) or raw.palette
    palette.meta = raw.meta
    palette.generate_spec = raw.generate_spec
    return palette
  else
    local result = {}
    for _, mod in ipairs(M.foxes) do
      local raw = require("nightfox.palette." .. mod)
      local palette = ovr[mod] and override(raw.palette, ovr[mod]) or raw.palette
      palette.meta = raw.meta
      palette.generate_spec = raw.generate_spec
      result[mod] = palette
    end
    return result
  end
end

return M
