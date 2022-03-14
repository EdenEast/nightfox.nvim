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
      spec = override(spec, pallet, ovr[name])
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
