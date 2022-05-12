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

local store = {}
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

function M.register(name, palette, opts)
  opts = opts or {}
  store[name] = {
    palette = palette,
    spec_fn = opts.spec_fn,
    meta = {
      name = name,
      light = opts.light or false,
    },
  }

  table.insert(M.foxes, name)
end

function M.load(name)
  local ovr = require("nightfox.store").palettes

  local function apply_store(key, palette)
    return ovr[key] and override(palette, ovr[key]) or palette
  end

  if name then
    local valid = collect.contains(M.foxes, name)
    local raw = valid and store[name] and store[name]
      or require("nightfox.palette." .. name)
      or require("nightfox.palette.nightfox")

    local palette = raw.palette
    palette = apply_store("all", palette)
    palette = apply_store(name, palette)
    palette.meta = raw.meta
    palette.spec_fn = store[name] and store[name].spec_fn or raw.spec_fn

    return palette
  else
    local result = {}
    for _, mod in ipairs(M.foxes) do
      local raw = store[mod] and store[mod] or require("nightfox.palette." .. mod)
      local palette = raw.palette
      palette = apply_store("all", palette)
      palette = apply_store(mod, palette)
      palette.meta = raw.meta
      palette.spec_fn = store[mod] and store[mod].spec_fn or raw.spec_fn
      result[mod] = palette
    end
    return result
  end
end

return M
