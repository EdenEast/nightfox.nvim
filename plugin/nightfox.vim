" Load only once
if exists('g:loaded_nightfox') | finish | endif

command! NightfoxCompile lua require('nightfox').compile()
command! NightfoxClean lua require("nightfox").clean()
command! NightfoxStatus lua require("nightfox").status()

let g:loaded_nightfox = 1
