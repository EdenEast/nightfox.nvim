local function reload()
  for name, _ in pairs(package.loaded) do
    if name:match("^nightfox") then
      if not name:match("config") and not name:match("deprecation") and not name:match("override") then
        package.loaded[name] = nil
      end
    end
  end
end

return setmetatable({}, {
  __call = function(_)
    reload()
  end,
})
