local collect = require("nightfox.lib.collect")
local template = require("nightfox.util.template")

--#region Types

---@class Spec
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
---@field syntax SpecSyntax
---@field diag SpecDiagnostic
---@field diag_bg SpecDiagnosticBg
---@field diff SpecDiff
---@field git SpecGit

---@class SpecSyntax
---@field bracket string
---@field builtin0 string
---@field builtin1 string
---@field builtin2 string
---@field builtin3 string
---@field comment string
---@field conditional string
---@field const string
---@field dep string
---@field field string
---@field func string
---@field ident string
---@field keyword string
---@field number string
---@field operator string
---@field preproc string
---@field regex string
---@field statement string
---@field string string
---@field type string
---@field variable string

---@class SpecDiagnostic
---@field error string
---@field warn string
---@field info string
---@field hint string

---@class SpecDiagnosticBg
---@field error string
---@field warn string
---@field info string
---@field hint string

---@class SpecDiff
---@field add string
---@field delete string
---@field change string
---@field text string

---@class SpecGit
---@field add string
---@field removed string
---@field changed string

--#endregion

local M = {}

function M.load(name)
  local color = require("nightfox.lib.color")
  local config = require("nightfox.config")

  if name then
    local pal = require("nightfox.palette").load(name)
    local spec = pal.generate_spec(pal)
    spec.palette = pal
    config.on_spec(spec, name, color)
    return spec
  end

  local list = {}
  local palettes = require("nightfox.palette").load()
  for _, pal in ipairs(palettes) do
    local style = pal.meta.name
    local spec = pal.generate_spec(pal)
    spec.palette = pal
    config.on_spec(spec, style, color)
    table.insert(list, spec)
  end
  return list
end

return M
