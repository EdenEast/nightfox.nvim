vim.opt.runtimepath:append("./.")

local output_file = "lua/nightfox/util/precompiled.lua"
require("nightfox.lib.compile").compile(output_file)
vim.cmd("quit")
