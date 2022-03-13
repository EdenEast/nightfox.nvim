-- This file is to be run with
-- `nvim --headless --clean -u precompiled.lua`
vim.opt.runtimepath:append("./.")

require("nightfox.config").set_options({
  compile_path = "./lua/nightfox/precompiled",
})
require("nightfox.lib.compile").compile(output_file)
vim.cmd("quit")
