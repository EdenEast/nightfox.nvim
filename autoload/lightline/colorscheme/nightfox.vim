if (has('nvim'))
  let s:palette = v:lua.require('lightline.colorscheme.nightfox')
else
  lua nightfox_vim = require"lightline.colorscheme.nightfox_vim"
  let s:palette_str = luaeval('nightfox_vim')
  let s:palette = eval(s:palette_str)
endif
let g:lightline#colorscheme#nightfox#palette = lightline#colorscheme#fill(s:palette)

