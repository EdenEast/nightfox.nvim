local M = {}

M.foxes = {
  "nightfox",
  "nordfox",
  "palefox",
}

-- Returns a color table based on the name provided
-- This returns the initial colors defined by the colorscheme
-- without overrides from the configuration
-- If name is not found will default to nightfox
-- If the fox's name is invalid the it will return nightfox colors
function M.init(name)
  name = name or require("nightfox.config").options.fox

  if name == "randfox" then
    local index = math.random(#M.foxes)
    return require("nightfox.colors." .. M.foxes[index]).init()
  end

  if vim.tbl_contains(M.foxes, name) then
    return require("nightfox.colors." .. name).init()
  end

  print("Nightfox: colorscheme " .. name .. " was not found")
  return require("nightfox.colors.nightfox").init()
end

-- Return color table based on the name provided
-- If no name is provided it will return the fox set in the config
-- If the fox defined in the configuration is invalid the it will return nightfox colors
-- @param name string (optional)
function M.load(name)
  name = name or require("nightfox.config").options.fox

  if name == "randfox" then
    local index = math.random(#M.foxes)
    return require("nightfox.colors." .. M.foxes[index]).load()
  end

  if vim.tbl_contains(M.foxes, name) then
    return require("nightfox.colors." .. name).load()
  end

  print("Nightfox: colorscheme " .. name .. " was not found")
  return require("nightfox.colors.nightfox").load()
end

return M
