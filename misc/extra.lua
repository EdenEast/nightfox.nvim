-- This file is to be run with from the root of the project
-- `nvim --headless --clean -u extra/extra.lua`

vim.opt.runtimepath:append("./.")
-- package.path = "./lua/?/init.lua;./lua/?.lua"

local util = require("nightfox.util")

local function write(str, folder, filename)
  util.ensure_dir(folder)
  local name = util.join_paths(folder, filename)
  local file = io.open(name, "w")
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

local specs = require("nightfox.spec").load()

for extra, ext in pairs(extras) do
  local mod = require("nightfox.extra." .. extra)
  for name, spec in pairs(specs) do
    local folder = util.join_paths("extra", name)
    local filename = "nightfox_" .. extra .. "." .. ext
    spec.palette.meta.url = string.format(
      "https://github.com/edeneast/nightfox.nvim/raw/main/extra/%s/%s",
      name,
      filename
    )
    write(mod.generate(spec), folder, filename)
  end
end

vim.cmd("quit")
