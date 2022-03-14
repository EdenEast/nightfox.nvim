-- This file is to be run with from the root of the project
-- `nvim --headless --clean -u misc/precompiled.lua`

vim.opt.runtimepath:append("./.")

require("nightfox.config").set_options({
  compile_path = "./lua/nightfox/precompiled",
})
require("nightfox.lib.compile").compile(output_file)
vim.cmd("quit")
