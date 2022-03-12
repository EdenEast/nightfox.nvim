" Load only once
if exists('g:loaded_nightfox') | finish | endif

command! -nargs=* NightfoxCompile lua require('nightfox').compile(<q-args>)
command! -nargs=* NightfoxClean lua require("nightfox").clean()

let g:loaded_nightfox = 1
