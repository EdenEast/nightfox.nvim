# 🦊 Nightfox

> 🚧 This colorscheme is currently in development and subject to changes 🚧

A dark Neovim theme written in lua.

## Styles

### Nightfox

![nightfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nightfox-example.png)

### Nordfox

![nordfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nordfox-example.png)

## ✨ Features

Supported plugins

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [Barbar](https://github.com/romgrk/barbar.nvim)

## ⚡️ Requirements

- Neovim >= 0.5.0

## 📦 Installation

Install the theme with a package manager:

```vim
" For Vim-Plug
Plug 'EdenEast/nightfox.nvim'
```

```lua
-- For Packer
use 'EdenEast/nightfox.nvim'
```

## 🚀 Usage

Enable the colorscheme:

```vim
" From vimscript
colorscheme nightfox
```

```lua
-- From lua
require('nightfox').set()
```

To enable `Nightfox` from `Lualine`:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = "nightfox"
  }
}
```

To enable `Nightfox` from `Lightline`:

```vim
" Vim Script
let g:lightline = {'colorscheme': 'nightfox'}
```

## ⚙️ Configuration

> ❗️ configuration needs to be set BEFORE loading the color scheme with colorscheme tokyonight

Available options:

| Option                       | Default      | Description                                                         |
| ---------------------------- | ------------ | ------------------------------------------------------------------- |
| nightfox_style               | `"nightfox"` | Which color style that will be applied                              |
| nightfox_transparent         | `false`      | Disable setting the background color                                |
| nightfox_terminal_colors     | `true`       | Configure the colors used when opening `:terminal` in neovim        |
| nightfox_italic_comments     | `false`      | Make comments italic                                                |
| nightfox_italic_functions    | `false`      | Make function calls and names italic                                |
| nightfox_italic_keywords     | `false`      | Make keywords like if, for, while etc. italic                       |
| nightfox_italic_strings      | `false`      | Make strings italic                                                 |
| nightfox_italic_variables    | `false`      | Make variable names and identifiers italic                          |


```lua
-- Example in lua
vim.g.nightfox_italic_comments = 1

-- Load the colorscheme
require('nightfox').set()
```

```vim
" Example in vim
let g:nightfox_italic_comments = 1

" Load the colorscheme
colorscheme nightfox
```

## ⚙️ Advanced Configuration

To inspect what colors are defined you can print the color object:

```lua
print(vim.inspect(require('nightfox.colors').setup()))
```
