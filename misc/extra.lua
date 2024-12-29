-- This file is to be run with from the root of the project
-- `nvim --headless --clean -u misc/extra.lua`

vim.opt.runtimepath:append("./.")
-- package.path = "./lua/?/init.lua;./lua/?.lua"

local util = require("nightfox.util")
local join = util.join_paths
local fmt = string.format

local function write(str, folder, filename)
  util.ensure_dir(folder)
  local name = join(folder, filename)
  local file = io.open(name, "w")
  assert(file)
  file:write(str)
  file:close()
end

local extras = {
  alacritty = "toml",
  base16 = "yaml",
  bat = { ext = "tmTheme", use_spec_name = true },
  fish = { ext = "fish", use_spec_name = true },
  ghostty = { ext = "ghostty", use_spec_name = true },
  iterm = { ext = "itermcolors", use_spec_name = true },
  kitty = "conf",
  konsole = "colorscheme",
  nushell = { ext = "nu", use_spec_name = true },
  starship = "toml",
  tmux = { ext = "tmux", use_spec_name = true },
  wezterm = "toml",
  windows_terminal = "json",
  xresources = { ext = "Xresources", use_spec_name = true },
  warp = "yaml",
  zellij = { ext = "kdl", basename = "nightfox", is_full = true },
}

local specs = require("nightfox.spec").load()
table.sort(specs)

for extra_name, extra in pairs(extras) do
  local is_table = type(extra) == "table"
  local mod = require("nightfox.extra." .. extra_name)
  if is_table and extra.is_full then
    local folder = join("extra", extra_name)
    local filename = extra.basename and fmt("%s.%s", extra.basename, extra.ext) or fmt("%s.%s", extra_name, extra.ext)
    local url = fmt("https://github.com/edeneast/nightfox.nvim/raw/main/%s/%s", folder, filename)
    write(mod.generate(specs, { url = url }), folder, filename)
  else
    for spec_name, spec in pairs(specs) do
      local folder = join("extra", spec_name)
      local ext = is_table and extra.ext or extra
      local filename = (is_table and extra.use_spec_name) and fmt("%s.%s", spec_name, ext)
        or fmt("%s.%s", extra_name, ext)

      spec.palette.meta.url = fmt("https://github.com/edeneast/nightfox.nvim/raw/main/%s/%s", folder, filename)
      write(mod.generate(spec, {}), folder, filename)
    end
  end
end

vim.cmd("quit")
