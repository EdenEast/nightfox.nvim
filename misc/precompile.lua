-- This file is to be run with from the root of the project
-- `nvim --headless --clean -u misc/precompiled.lua`

vim.opt.runtimepath:append("./.")

local lib = require("nightfox.lib.compile")

-- Precompile nvim api for 0.7+ with `vim.api.nvim_set_hl()`
lib.compile({
  compile_path = "./lua/nightfox/precompiled/nvim",
  nvim_api = true,
})

-- Precompile viml compile file
lib.compile({
  compile_path = "./lua/nightfox/precompiled/viml",
  nvim_api = false,
})

vim.cmd("quit")
