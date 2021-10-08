package.path = "./lua/?/init.lua;./lua/?.lua"

local color_module = require("nightfox.colors")

local function write(str, filename)
  print("[write]: extra/" .. filename)
  local file = io.open("extra/" .. filename, "w")
  file:write(str)
  file:close()
end

local extras = {
  alacritty = "yml",
  fish = "fish",
  kitty = "conf",
  iterm = "itermcolors",
  tmux = "tmux",
  wezterm = "toml",
  xresources = "Xresources",
  windows_terminal = "json",
}

for extra, ext in pairs(extras) do
  local plugin = require("nightfox.extras." .. extra)
  for _, style in ipairs(color_module.foxes) do
    local colors = color_module.init(style)
    local filename = string.format("%s/nightfox_%s.%s", style, extra, ext)
    colors.meta.url = "https://github.com/edeneast/nightfox.nvim/raw/main/extra/" .. filename
    write(plugin.generate(colors), filename)
  end
end
