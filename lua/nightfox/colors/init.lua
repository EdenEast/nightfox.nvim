local M = {}

M.foxes = {
  "nightfox",
  "nordfox",
  "dayfox",
  "dawnfox",
  "duskfox",
}

-- Adds subtle and harsh colors depending if the colors are dark or light
-- @param colors table
-- @return table of colors
local function construct(colors)
  colors.harsh = colors.meta.light and colors.black or colors.white
  colors.subtle = colors.meta.light and colors.white or colors.black
  return colors
end

-- Returns a color table based on the name provided
-- This returns the initial colors defined by the colorscheme
-- without overrides from the configuration
-- If name is not found will default to nightfox
-- If the fox's name is invalid the it will return nightfox colors
-- @param name string (optional)
-- @return table of colors
function M.init(name)
  name = name or require("nightfox.config").options.fox

  if name == "randfox" then
    local index = math.random(#M.foxes)
    return construct(require("nightfox.colors." .. M.foxes[index]).init())
  end

  for _, fox in ipairs(M.foxes) do
    if fox == name then
      return construct(require("nightfox.colors." .. name).init())
    end
  end

  require("nightfox.util").warn("colorscheme " .. name .. " was not found")
  return construct(require("nightfox.colors.nightfox").init())
end

-- Return color table based on the name provided
-- If no name is provided it will return the fox set in the config
-- If the fox defined in the configuration is invalid the it will return nightfox colors
-- @param name string (optional)
-- @return table of colors
function M.load(name)
  name = name or require("nightfox.config").options.fox

  if name == "randfox" then
    local index = math.random(#M.foxes)
    return construct(require("nightfox.colors." .. M.foxes[index]).load())
  end

  for _, fox in ipairs(M.foxes) do
    if fox == name then
      return construct(require("nightfox.colors." .. name).load())
    end
  end

  require("nightfox.util").warn("colorscheme " .. name .. " was not found")
  return construct(require("nightfox.colors.nightfox").load())
end

return M
