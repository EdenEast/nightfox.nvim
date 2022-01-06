# 🦊 Nightfox

A dark (Neo)vim theme written in lua.

<div align="center">
<img src="https://github.com/EdenEast/nightfox.nvim/wiki/resources/banner.svg" alt="banner" />
</div>

## Styles

Which _fox_ will you choose?

### Nightfox

![nightfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nightfox-example.png)

### Nordfox

![nordfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nordfox-example.png)

### Dayfox

![dayfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-dayfox-example.png)

### Dawnfox

![dawnfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-dawnfox-example.png)

### Duskfox

![duskfox-example](https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-duskfox-example.png)

### Randfox

Having trouble picking a fox. Let the dice decide! Set `style` to `randfox` to get a random
fox every time the colorsheme is applied.

## ✨ Features

Supported plugins

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Glyph Palette](https://github.com/lambdalisue/glyph-palette.vim/)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Lightline](https://github.com/itchyny/lightline.vim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [Barbar](https://github.com/romgrk/barbar.nvim)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)

## ⚡️ Requirements

- `Neovim` >= 0.5.0 **- or -** `Vim` with Lua >= 5.2
- Gui or Terminal with `true color` support
  - Some example Terminals:
    - [Alacritty](https://alacrity.org)
    - [Kitty](https://sw.kovidgoyal.net/kitty/)
    - [WezTerm](https://wezfurlong.org/wezterm/)

> Note for MacOS: `terminal.app` does not support `true color` use either `Iterm2` or another `true color` terminal.

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

### Vimscript

Enable the colorscheme:

```vim
colorscheme nightfox
```

Nightfox also defines the other styles as colorschemes, `nordfox`, `dayfox`, `dawnfox` and `duskfox`.

### Lua

If you prefer to use lua:

```lua
require('nightfox').load(<fox_name>)
```

If `<fox_name>` is not passed load will apply the fox specified in the config.

## Status lines

For all status lines `nightfox` is the only valid name. The other names are names of styles.

### [Lualine]

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = "nightfox"
  }
}
```

**Note:** Use lualine fork [shadmansaleh/lualine.nvim][lualinefork] while waiting for pr [#311][lualinepr] to be merged

### [Lightline]

To enable `Nightfox` from `Lightline`:

```vim
" Vim Script
let g:lightline = {'colorscheme': 'nightfox'}
```

[lualine]: https://github.com/hoob3rt/lualine.nvim
[lightline]: https://github.com/itchyny/lightline.vim
[lualinefork]: https://github.com/shadmansaleh/lualine.nvim
[lualinepr]: https://github.com/hoob3rt/lualine.nvim/pull/311

## Command

Nightfox also provides the following command to load a specific fox's style.

- `:NightfoxLoad <fox>` load and applies the passed `<fox>` (Use tab completion to view options)

## ⚙️ Configuration

Nightfox is configured in lua. Nightfox comes with default configuration values. You can view them here:

```lua
{
  fox = "nightfox", -- Which fox style should be applied
  transparent = false, -- Disable setting the background color
  alt_nc = false, -- Non current window bg to alt color see `hl-NormalNC`
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = "NONE", -- Style that is applied to comments: see `highlight-args` for options
    functions = "NONE", -- Style that is applied to functions: see `highlight-args` for options
    keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
    strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
    variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = false, -- Enable/Disable inverse highlighting for match parens
    visual = false, -- Enable/Disable inverse highlighting for visual selection
    search = false, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {}, -- Override default colors
  hlgroups = {}, -- Override highlight groups
}
```

You can override these values to suite your preferences. An example of this would be as follows:

```lua
local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
  fox = "nordfox", -- change the colorscheme to use nordfox
  styles = {
    comments = "italic", -- change style of comments to be italic
    keywords = "bold", -- change style of keywords to be bold
    functions = "italic,bold" -- styles can be a comma separated list
  },
  inverse = {
    match_paren = true, -- inverse the highlighting of match_parens
  },
  colors = {
    red = "#FF000", -- Override the red color for MAX POWER
    bg_alt = "#000000",
  },
  hlgroups = {
    TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
    LspCodeLens = { bg = "#000000", style = "italic" },
  }
})

-- Load the configuration set above and apply the colorscheme
nightfox.load()
```

For configuration in `vimscript`, wrap the above example in a lua script block.

```vim
" vimscript
lua << EOF
-- example above here
EOF
```

**Note:** The `colorscheme` command sets the `fox` value to the colorscheme that is being supplied,
before loading the colorscheme.

You can also find this information in vim's help `:help nightfox`.

### General

These are general settings and are unrelated to any group of settings.

- `fox`: **{string}** The name of the fox you which to base the colorscheme on. See [Styles](#styles).
- `transparent`: **{boolean}** If set to true the background color will not be set.
- `alt_nc`: **{boolean}** If set non-current (unfocused) windows Will have an alt bg color.
- `terminal_colors`: **{boolean}** If set to true nightfox will set the terminal colors for `:terminal`.

### Styles

These options set the style for their respective highlight groups. See `:help highlight-args`.

- `comments`: **{string}** Style to the applied to comments
- `functions`: **{string}** Style to the applied to functions
- `keywords`: **{string}** Style to the applied to keywords
- `strings`: **{string}** Style to the applied to strings
- `variables`: **{string}** Style to the applied to variables

### Inverse

These options set the style of selection groups. If set, The selection will swap foreground and
background (inverse).

- `match_paren`: **{bool}** The character under the cursor or just before it, if it is a paired bracket, and its match. See `:help pi_paren.txt`
- `search`: **{bool}** Highlighted search matches and incremental searches. See `:help hlsearch`
- `visual`: **{bool}** Visual selection mode

### Colors

`colors` is a table that defines hex color overrides for the colors returned by
`require('nightfox.colors').load()`. To see what values can be overridden, use `vim.inspect` (for neovim) to
print out the returned color table.

```lua
print(vim.inspect(require('nightfox.colors').init()))
```

Colors with the suffix `_br` are brighter colors. Colors with the suffix `_dm` are dimmer colors.

To see what colors are defined to what highlight group you can reference the file
[theme.lua](./lua/nightfox/theme.lua).

### HLGroup

`hlgroups` is a table that defines overrides for highlight groups. The table consists of the
highlight group name as the key. The value is a table that defines optional values of the highlight
group. These values can be:

- `fg`: The foreground color of the highlight group
- `bg`: The background color of the highlight group
- `style`: The style applied to the highlight group (see `:help hightlight-args`)
- `sp`: Special colors use in GUI. (see `:help hightlight-guisp`)

To use a color defined by nightfox's you can use the template format: `${}`. Any value that you can
override in the [colors](#colors) section can be added in the template format. Some examples would
be: `${red}`, `${blue_br}`, `${bg_alt}`.

To see examples of highlight groups that can be overridden reference the file
[theme.lua](./lua/nightfox/theme.lua).

To find the hightlight group being applied to a piece of syntax refer to
[syntax highlight group](#syntax-highlight-groups) section.

## ⚙️ Advanced Configuration

### Get color values from nightfox

There are different ways to get colors from nightfox. Here are some examples:

```lua
-- Get the colors defined in nightfox with the color overrides from config applied
local colors = require('nightfox.colors').load()

-- Get the color of a specific theme with the color overrides applied from the config
local colors = require('nightfox.colors').load('nordfox')

-- Get the colors defined in nightfox without the color overrides applied from the config
local colors = require('nightfox.colors').init()

-- Get the color of a specific theme without the color overrides applied from the config
local colors = require('nightfox.colors').init("nordfox")
```

### Syntax highlight groups

This section will help you determine what highlight group is being applied to a piece of syntax.
These sections will output the highlight group for the value under the cursor.

#### Treesitter

If treesitter is the highlighting method for the language in question you can use the command:
`:TSHighlightCapturesUnderCursor`. This command comes from the treesitter [playground] plugin. Make
sure you have this installed as well as [nvim-treesitter].

[playground]: https://github.com/nvim-treesitter/playground
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter

#### Vim highlighting

Add this vimscript function to your configuration.

```vim
" plugin/syntax.vim

" Output the highlight group under the cursor
"
" This function will output the entire stack of hightlight groups being applied. The stack is
" outputted in the correct order from top to bottom. Vim will walk through the stack from top to
" bottom and apply the first defined highlight group found.
function! SynStack()
  for i1 in synstack(line("."), col("."))
    let i2 = synIDtrans(i1)
    let n1 = synIDattr(i1, "name")
    let n2 = synIDattr(i2, "name")
    echo n1 "->" n2
  endfor
endfunction

" You can also create a convenience mapping
map <F2> <cmd>call SynStack()<cr>
```

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

## 🔥Contributing

Pull requests are welcome. For contributing to `extras`, they are generated with a template and run
with each colorscheme style. To add a new template follow these steps:

1. Create new `lua` file under `./lua/nightfox/extras/`
1. Add the name and file extension into the `extras` table in `./lua/nightfox/extras/init.lua`
1. To execute the template generation `:luafile ./lua/nightfox/extras/init.lua`
1. Commit any files generated in `./extra`

Found a new fox? Follow this checklist to capture the fox:

1. Create a new `lua` file under `./lua/nightfox/colors` folder with the fox's name
1. Copy the contents of another fox into the file that was created
1. Update the color table with new foxes hex colors
1. Add the fox's name into the `M.foxes` table in `./lua/nightfox/colors/init.lua`

## Credits

These themes were used as references and based off this:

- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim/)
- [material.nvim](https://github.com/marko-cerovac/material.nvim)
- [rose-pine](https://github.com/rose-pine/neovim) (dawnfox / duskfox)
