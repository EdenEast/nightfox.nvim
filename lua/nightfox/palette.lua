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
  "carbonfox",
  "dawnfox",
  "dayfox",
  "duskfox",
  "nightfox",
  "nordfox",
  "terafox",
}

function M.load(name)
  local color = require("nightfox.lib.color")
  local config = require("nightfox.config")

  if name then
    local vaild = collect.contains(M.foxes, name)
    if not vaild then
      require("nightfox.lib.log").error("Unknown style name: " .. name)
      name = "nightfox"
    end
    local raw = require("nightfox.palette." .. name)
    local pal = raw.palette
    pal.meta = raw.meta
    config.on_palette(pal, name, color)
    pal.generate_spec = raw.generate_spec
    return pal
  end

  local list = {}
  for _, style in ipairs(M.foxes) do
    local raw = require("nightfox.palette." .. style)
    local pal = raw.palette
    pal.meta = raw.meta
    config.on_palette(pal, name, color)
    pal.generate_spec = raw.generate_spec
    table.insert(list, pal)
  end
  return list
end

return M
