local C = require("nightfox.lib.color")
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

local function override(spec, palette, store)
  store = template.parse(store, palette)
  return collect.deep_extend(spec, store)
end

local function default_gen_spec(pal)
  local var = pal.meta.light and pal.black.base or pal.white.base
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,  -- Dark bg (status line and float)
    bg1  = pal.bg1,  -- Default bg
    bg2  = pal.bg2,  -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3,  -- Lighter bg (cursor line)
    bg4  = pal.bg4,  -- Conceal, border fg

    fg0  = pal.fg0,  -- Lighter fg
    fg1  = pal.fg1,  -- Default fg
    fg2  = pal.fg2,  -- Darker fg (status line)
    fg3  = pal.fg3,  -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,            -- Brackets and Punctuation
    builtin0    = pal.red.base,        -- Builtin variable
    builtin1    = pal.cyan:harsh(),    -- Builtin type
    builtin2    = pal.orange:harsh(),  -- Builtin const
    builtin3    = pal.red:harsh(),     -- Not used
    comment     = pal.comment,         -- Comment
    conditional = pal.magenta:harsh(), -- Conditional and loop
    const       = pal.orange:harsh(),  -- Constants, imports and booleans
    dep         = spec.fg3,            -- Deprecated
    field       = pal.blue.base,       -- Field
    func        = pal.blue:harsh(),    -- Functions and Titles
    ident       = pal.cyan.base,       -- Identifiers
    keyword     = pal.magenta.base,    -- Keywords
    number      = pal.orange.base,     -- Numbers
    operator    = spec.fg2,            -- Operators
    preproc     = pal.pink:harsh(),    -- PreProc
    regex       = pal.yellow:harsh(),  -- Regex
    statement   = pal.magenta.base,    -- Statements
    string      = pal.green.base,      -- Strings
    type        = pal.yellow.base,     -- Types
    variable    = var,                 -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.2):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.2):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.2):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.2):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green:subtle()), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red:subtle()), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue:subtle()), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan:subtle()), 0.2):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

function M.load(name)
  local ovr = require("nightfox.store").specs

  local function apply_store(key, spec, palette)
    return ovr[key] and override(spec, palette, ovr[key]) or spec
  end

  if name then
    local palette = require("nightfox.palette").load(name)
    local spec = default_gen_spec(palette)
    if palette.spec_fn then
      spec = palette:spec_fn(spec)
    end
    spec = apply_store("all", spec, palette)
    spec = apply_store(name, spec, palette)
    spec.palette = palette
    return spec
  else
    local result = {}
    local foxes = require("nightfox.palette").foxes
    for _, mod in ipairs(foxes) do
      local palette = require("nightfox.palette").load(mod)
      local spec = default_gen_spec(palette)
      if palette.spec_fn then
        spec = palette:spec_fn(spec)
      end
      spec = apply_store("all", spec, palette)
      spec = apply_store(name, spec, palette)
      spec.palette = palette
      result[mod] = spec
    end
    return result
  end
end

return M
