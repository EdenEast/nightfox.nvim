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

local function hash()
  local hash = require("nightfox.lib.hash")(store)
  return hash and hash or 0
end

local function check_link(tbl)
  for _, style in pairs(tbl) do
    for _, opts in pairs(style) do
      opts.link = opts.link or ""
    end
  end
end

return setmetatable({ reset = reset, hash = hash }, {
  __index = function(_, value)
    if store[value] then
      return store[value]
    end
  end,

  __newindex = function(_, key, value)
    if store[key] then
      if key == "groups" then
        check_link(value or {})
      end
      store[key] = collect.deep_extend(store[key], value or {})
      store.has_override = true
    end
  end,
})
