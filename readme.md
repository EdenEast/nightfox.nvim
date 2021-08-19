# 🦊 Nightfox

A dark Neovim theme written in lua.

<div align="center">
<img src="https://github.com/EdenEast/nightfox.nvim/wiki/resources/banner.svg" alt="banner" />
</div>

## Styles

### Nightfox

![nightfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nightfox-example.png)

### Nordfox

![nordfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nordfox-example.png)

### Palefox

![palefox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-palefox-example.png)

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

Note, the colorscheme's name is `nightfox`. Other styles are only set with the variable
`nightfox_style`. Setting `colorscheme`, `lualine` or `lightline` theme to `nordfox` or `palefox` is invalid.

## ⚙️ Configuration

> ❗️ Configuration needs to be set BEFORE loading the color scheme with colorscheme nightfox

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
| nightfox_color_delimiter     | `""`         | Set `TSPunctDelimiter` to either hex color code or color name       |
| nightfox_colors              | `{}`         | Override specific colors or groups                                  |


```lua
-- Example in lua
vim.g.nightfox_style = "palefox"
vim.g.nightfox_color_delimiter = "red"
vim.g.nightfox_italic_comments = 1

-- Load the colorscheme
require('nightfox').set()
```

```vim
" Example in vim
let g:nightfox_style = "palefox"
let g:nightfox_color_delimiter = "red"
let g:nightfox_italic_comments = 1

" Load the colorscheme
colorscheme nightfox
```

## ⚙️ Advanced Configuration

### Inspect color object

To inspect what colors are defined you can print the color object:

```vim
:lua print(vim.inspect(require('nightfox.colors').setup()))
```

### Override highlight group

Nightfox does not have a builtin way to override highlight groups like it does for colors. However
this can be done manually. Here is a documented example of overriding multiple highlight groups:

```lua
-- Setting the style you want the require colors will return
vim.g.nightfox_style = "nordfox"

-- Overriding any colors you want
vim.g.nightfox_colors = {
  red = "#FF0000" -- Much red, such wow
}

-- Set the colorscheme, This will set nightfox's config based on the variables above
require('nightfox').set()

-- Get the colors from nightfox and util functions
local colors = require("nightfox.colors").setup()
local util = require("nightfox.util")

-- Create a table with the highlight groups that you want to override and the highlight group keys.
-- Keys are the following: bg, fg, style and sp.
-- See `:help highlight-guisp` for more info.
local overrides = {
  String = { fg = colors.orange },
  IncSearch = { bg = colors.magenta, fg = colors.black },
}

-- Loop though table above and call nightfox's highlight util function
for group, values in pairs(overrides) do
  -- This function takes the values defined above and creates a vim.cmd highlight command.
  util.highlight(group, values)
end
```

If you would like to see an example list of highlight groups that you override, check out the
[theme.lua](./lua/nightfox/theme.lua) file.


## 🍬 Extra

There are [extra](./extra) configuration files for:

- [alacritty](https://github.com/alacritty/alacritty)
- [fish](https://fishshell.com/)
- [iterm](https://iterm2.com/index.html)
- [kitty](https://sw.kovidgoyal.net/kitty/overview/#configuring-kitty)
- [tmux](https://github.com/tmux/tmux)
- [wezterm](https://wezfurlong.org/wezterm/config/appearance.html#defining-a-color-scheme-in-a-separate-file)
- [xresources](https://wiki.archlinux.org/title/X_resources)

The generation method used is based off of [tokyonight](https://github.com/folke/tokyonight.nvim).
They are generated by executing lua on the file `lua/nightfox/extras/init.lua`. The generated
results are output to the [extra](./extra) folder.

## Credits

These themes were used as references and based off this:

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim/)
- [material.nvim](https://github.com/marko-cerovac/material.nvim)
- [onedark.nvim](https://github.com/ful1e5/onedark.nvim)
- [gruvbox-flat.nvim](https://github.com/eddyekofo94/gruvbox-flat.nvim)

