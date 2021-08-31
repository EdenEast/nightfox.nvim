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
  iterm = "itermcolors",
  kitty = "conf",
  konsole = "colorscheme",
  tmux = "tmux",
  wezterm = "toml",
  windows_terminal = "json",
  xresources = "Xresources",
}

for extra, ext in pairs(extras) do
  local plugin = require("nightfox.extras." .. extra)
  for _, style in ipairs(color_module.foxes) do
    local colors = color_module.init(style)
    local filename = string.format("%s/nightfox_%s.%s", style, extra, ext)
    colors["_upstream_url"] = "https://github.com/edeneast/nightfox.nvim/raw/main/extra/" .. filename
    write(plugin.generate(colors), filename)
  end
end
