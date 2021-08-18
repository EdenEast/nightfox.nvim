package.path = "./lua/?/init.lua;./lua/?.lua"

local config = require("nightfox.config")

local function write(str, filename)
  print("[write]: extra/" .. filename)
  local file = io.open("extra/" .. filename, "w")
  file:write(str)
  file:close()
end

local extras = {
  alacritty = "yml",
  wezterm = "toml",
  xresources = "Xresources",
}

local styles = { "nightfox", "nordfox", "palefox" }

for extra, ext in pairs(extras) do
  local plugin = require("nightfox.extras." .. extra)
  for _, style in ipairs(styles) do
    config.style = style
    local colors = require("nightfox.colors").setup(config)
    local filename = string.format("%s/nightfox_%s.%s", style, extra, ext)
    P(filename)
    write(plugin.generate(colors), filename)
  end
end
