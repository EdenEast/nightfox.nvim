local color = {}

function color.setup(conf)
  local config = conf or require("nightfox.config")
  return require("nightfox.colors.nightfox").setup(config)
end

return color
