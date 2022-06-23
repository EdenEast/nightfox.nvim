if has('nvim')
  let s:p = v:lua.require('nightfox.util.lightline').generate('eppzfox')
else
  lua nightfox_vim = require('nightfox.util.lightline').dump('eppzfox')
  let s:palette_str = luaeval('nightfox_vim')
  let s:p = eval(s:palette_str)
endif
let g:lightline#colorscheme#duskfox#palette = lightline#colorscheme#fill(s:p)
