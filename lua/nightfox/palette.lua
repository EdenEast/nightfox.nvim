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
  for key, value in pairs(ovr) do
    if collect.contains(color_list, key) then
      if type(value) == "string" then
        color[key].base = value
      else
        for k, v in pairs(value) do
          color[key][k] = v
        end
      end
    else
      color[key] = value
    end
  end

  return color
end

function M.load(name)
  local ovr = require("nightfox.override").palettes

  local function apply_ovr(key, palette)
    return ovr[key] and override(palette, ovr[key]) or palette
  end

  if name then
    local valid = collect.contains(M.foxes, name)
    local raw = valid and require("nightfox.palette." .. name) or require("nightfox.palette.nightfox")
    local palette = raw.palette
    palette = apply_ovr("all", palette)
    palette = apply_ovr(name, palette)
    palette.meta = raw.meta
    palette.generate_spec = raw.generate_spec
    return palette
  else
    local result = {}
    for _, mod in ipairs(M.foxes) do
      local raw = require("nightfox.palette." .. mod)
      local palette = raw.palette
      palette = apply_ovr("all", palette)
      palette = apply_ovr(mod, palette)
      palette.meta = raw.meta
      palette.generate_spec = raw.generate_spec
      result[mod] = palette
    end
    return result
  end
end

return M
