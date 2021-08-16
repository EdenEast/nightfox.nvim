local color = {}

function color.setup(config)
  config = config or require("nightfox.config")

  if config.style == "nordfox" then
    return require("nightfox.colors.nordfox").setup()
  end

  if config.style == "palefox" then
    return require("nightfox.colors.palefox").setup()
  end

  return require("nightfox.colors.nightfox").setup()
end

return color
