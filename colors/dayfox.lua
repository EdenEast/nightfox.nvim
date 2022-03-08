-- Useful when debugging
if vim.g.nightfox_debug then
  local ignore = { "config", "deprication", "override" }
  for name, _ in pairs(package.loaded) do
    if name:match("^nightfox") then
      for _, ign in ipairs(ignore) do
        if name:match(ign) then
          goto continue
        end
      end
      package.loaded[name] = nil
      ::continue::
    end
  end
end

require("nightfox.config").set_fox("dayfox")
require("nightfox.main").load()
