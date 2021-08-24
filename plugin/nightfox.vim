" Load only once
if exists('g:loaded_nightfox') | finish | endif

command! -nargs=* -complete=customlist,v:lua.require'nightfox'.load_complete NightfoxLoad lua require('nightfox').load(<q-args>)

let g:loaded_nightfox = 1
