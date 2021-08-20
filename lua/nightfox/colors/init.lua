local color = {}

color.styles = {
  "nightfox",
  "nordfox",
  "palefox",
}

function color.setup(config)
  config = config or require("nightfox.config")

  if config.style == "randfox" then
    local index = math.random(#color.style)
    return require("nightfox.colors." .. color.styles[index]).setup()
  end

  if vim.tbl_contains(color.styles, config.style) then
    return require("nightfox.colors." .. config.style).setup()
  end

  print("[Nightfox]: Unknown style: " .. config.style)
  return require("nightfox.colors.nightfox").setup()
end

return color
