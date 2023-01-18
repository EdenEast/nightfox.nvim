vim.g.nightfox_debug = true
vim.opt.winblend = 15
require("nightfox").setup({
  groups = {
    all = {
      Normal = { bg = "bg1", fg = "fg1", blend = 15 },
    },
  },
})
