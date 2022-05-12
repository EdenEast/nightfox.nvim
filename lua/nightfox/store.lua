local collect = require("nightfox.lib.collect")

local store = {
  palettes = {},
  specs = {},
  groups = {},
  has_override = false,
}

local function reset()
  store.palettes = {}
  store.specs = {}
  store.groups = {}
  store.has_override = false
end

local function is_empty(name)
  local function impl(value)
    local r = store.palettes[value] or store.specs[value] or store.groups[value]
    return not r
  end
  return impl("all") or impl(name)
end

return setmetatable({ reset = reset, is_empty = is_empty }, {
  __index = function(_, value)
    if store[value] then
      return store[value]
    end
  end,

  __newindex = function(_, key, value)
    if store[key] then
      store[key] = collect.deep_extend(store[key], value or {})
      store.has_override = true
    end
  end,
})
