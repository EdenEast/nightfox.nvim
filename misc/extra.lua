-- This file is to be run with from the root of the project
-- `nvim --headless --clean -u misc/extra.lua`

vim.opt.runtimepath:append("./.")
-- package.path = "./lua/?/init.lua;./lua/?.lua"

local util = require("nightfox.util")
local join = util.join_paths

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
  nushell = "nu",
  tmux = "tmux",
  wezterm = "toml",
  windows_terminal = "json",
  xresources = "Xresources",
  warp = "yaml",
}

local full_extra = {
  zellij = { ext = "kdl", filename = "nightfox.kdl" },
}

local specs = require("nightfox.spec").load()
table.sort(specs)

for extra, ext in pairs(extras) do
  local mod = require("nightfox.extra." .. extra)
  for name, spec in pairs(specs) do
    local folder = util.join_paths("extra", name)
    local filename = "nightfox_" .. extra .. "." .. ext
    spec.palette.meta.url =
      string.format("https://github.com/edeneast/nightfox.nvim/raw/main/extra/%s/%s", name, filename)
    write(mod.generate(spec), folder, filename)
  end
end

for name, extra in pairs(full_extra) do
  local mod = require("nightfox.extra." .. name)
  local folder = extra.folder and join("extra", extra.folder) or join("extra", name)
  local filename = extra.filename or name .. "." .. extra.ext
  write(mod.generate(specs), folder, filename)
end

vim.cmd("quit")
