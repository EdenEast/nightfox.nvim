local collect = require("nightfox.lib.collect")

local store = {
  pallets = {},
  specs = {},
  groups = {},
  has_override = false,
}

return setmetatable({}, {
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
