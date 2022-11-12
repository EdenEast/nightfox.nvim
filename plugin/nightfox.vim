" Load only once
if exists('g:loaded_nightfox') | finish | endif

command! NightfoxCompile lua require('nightfox').compile()
command! NightfoxInteractive lua require('nightfox.interactive').attach()

let g:loaded_nightfox = 1
