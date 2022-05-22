<h1 align="center">Nightfox</h1>

<p align="center">
  <a href="https://github.com/edeneast/nightfox.nvim/stargazers"><img src="https://img.shields.io/github/stars/edeneast/nightfox.nvim?colorA=192330&colorB=719cd6&style=for-the-badge"></a>
  <a href="https://github.com/edeneast/nightfox.nvim/issues"><img src="https://img.shields.io/github/issues/edeneast/nightfox.nvim?colorA=192330&colorB=dbc074&style=for-the-badge"></a>
  <a href="https://github.com/edeneast/nightfox.nvim/contributors"><img src="https://img.shields.io/github/contributors/edeneast/nightfox.nvim?colorA=192330&colorB=81b29a&style=for-the-badge"></a>
  <a href="https://github.com/EdenEast/nightfox.nvim/network/members"><img src="https://img.shields.io/github/forks/edeneast/nightfox.nvim?colorA=192330&colorB=9d79d6&style=for-the-badge"></a>
</p>

<p align="center">
  A highly customizable theme for vim and neovim with support for lsp, treesitter and a variety of plugins.
</p>

<div align="center">
  <h3>Nightfox</h3><img src="https://user-images.githubusercontent.com/2746374/158456286-9e3ee657-60e6-49d8-b85e-dcab285b31c3.png" alt="nightfox" style="border-radius:1%" />
  <h3>Dayfox</h3><img src="https://user-images.githubusercontent.com/2746374/158456281-e8a968c0-e282-4943-b919-3d8454ca0529.png" alt="dayfox" style="border-radius:1%" />
  <h3>Dawnfox</h3><img src="https://user-images.githubusercontent.com/2746374/158456278-c5d656de-c445-44b8-9813-9fc91ffbce4c.png" alt="dawnfox" style="border-radius:1%" />
  <h3>Duskfox</h3><img src="https://user-images.githubusercontent.com/2746374/158456284-b6ff583f-c0bb-417c-b2d5-60b8364049a7.png" alt="duskfox" style="border-radius:1%" />
  <h3>Nordfox</h3><img src="https://user-images.githubusercontent.com/2746374/158456289-eee096df-7ea7-4161-9199-808fdba58e06.png" alt="nordfox" style="border-radius:1%" />
  <h3>Terafox</h3><img src="https://user-images.githubusercontent.com/2746374/160268126-cd417690-3660-4a04-9040-183c35f127f7.png" alt="terafox" style="border-radius:1%" />
</div>

> Tabline is [tabby.nvim] and statusline is [feline.nvim]. You can find my config for [tabby] and [feline] here as well
> as the auto generated [highlight][conf-colors] groups here.

[tabby.nvim]: https://github.com/nanozuki/tabby.nvim
[feline.nvim]: https://github.com/feline-nvim/feline.nvim
[tabby]: https://github.com/EdenEast/nyx/blob/573ff3f22da95c00ec71a094b3e1ec166c0afcdd/config/.config/nvim/lua/eden/modules/ui/tabby.lua
[feline]: https://github.com/EdenEast/nyx/blob/573ff3f22da95c00ec71a094b3e1ec166c0afcdd/config/.config/nvim/lua/eden/modules/ui/feline/init.lua
[conf-colors]: https://github.com/EdenEast/nyx/blob/573ff3f22da95c00ec71a094b3e1ec166c0afcdd/config/.config/nvim/lua/eden/modules/ui/colors.lua

## Notice ℹ️

Nightfox has recently been [rewritten][rewrite-pr] and has depricated most of the previous interface. If you are not
ready to update yet you can point your package manager to use the tag [`v1.0.0`][v1-tag] for the mean time.

<details>
<summary>Plugin Managers</summary>

```lua
use { "EdenEast/nightfox.nvim", tag = "v1.0.0" } -- Packer
```

```vim
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' } " Vim-Plug
```

</details>

### Changes

- `nightfox.load()` has been removed in favour of setting colorschemes using the builtin `:colorscheme` command
- `nightfox.setup()` function now takes configuration options as an optional key
- `fox` has been removed in favour of setting colorschemes using the builtin `:colorscheme` command
- `transparent` has been moved to `options.transparent`
- `terminal_color` has been moved to `options.terminal_color`
- `alt_nc` has been moved to `options.dim_inactive`
- `styles` has been moved to `options.styles`
- `inverse` has been moved to `options.inverse`
- `colors` has been replaced with the concept of [palettes](#palettes)
- `hlgroups` has been replaced with the concept of [groups](#customize-palettes-and-groups)

[v1-tag]: https://github.com/EdenEast/nightfox.nvim/tree/v1.0.0
[rewrite-pr]: https://github.com/EdenEast/nightfox.nvim/pull/77

<details>
<summary>Color Migration table</summary>

| V1 color     | V2 palette |
| ------------ | ---------- |
| bg           | bg1        |
| bg_alt       | bg0        |
| bg_sidebar   | bg0        |
| bg_float     | bg0        |
| bg_popup     | bg0        |
| bg_highlight | bg3        |
| bg_visual    | sel0       |
| bg_search    | sel1       |
| fg           | fg1        |
| fg_alt       | fg2        |
| fg_gutter    | fg3        |

</details>

## Features

- Support both vim and neovim
- Highly configurable with template overriding
- Support for multiple [plugins](#supported-plugins) and [status lines](#status-lines)
  - And many others should "just work"!
- [Compile](#compile) user's configuration
- Export [Color](#color-lib) library utility
- [Interactive](#interactive) live config realoading

## Requirements

- Neovim >= 0.5 **or** Vim 8.2 with lua >= 5.2
- True color support
- Undercurl terminal support (optional)

> Note for MacOS: The default `terminal` does not support `true color`. Use either `Iterm2` or [another] terminal that
> supports true color.

[another]: https://gist.github.com/XVilka/8346728#terminal-emulators

## Installation

Download with your favorite package manager.

```lua
use "EdenEast/nightfox.nvim" -- Packer
```

```vim
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
```

## Usage

Simply set the colorscheme with the builtin command `:colorscheme`

```vim
colorscheme nightfox
```

```lua
vim.cmd("colorscheme nightfox")
```

## Configuration

There is no need to call `setup` if you don't require to change the default options and settings.

```lua
-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
```

If you would like to change any of the default options above you only have to define the options that change. If an
option is not present in your options table the default option will be used. For example if chaning the styles of
certain syntax is the only desired change then your options table would look like:

```lua
require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})
```

To see a detailed explanation of nightfox's config settings consult either the builtin help `:help nightfox` or
[Usage](./usage.md).

### Modules

Nightfox's modules store configuration information for various plugins and other neovim modules. To enable a module
either set the module to `true` or if the module has additional configuration information set `enable` to `true`.

To see a list of modules check, see [Usage](./usage.md#module) or `:help` for more information.

### Customize palettes and groups

You can change the color `palette` and the highlight `group` of nightfox. Here is a brief example:

```lua
-- Palettes are the base color defines of a colorscheme.
-- You can override these palettes for each colorscheme defined by nightfox.
local palettes = {
  -- Everything defined under `all` will be applied to each style.
  all = {
    -- Each palette defines these colors:
    --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
    --
    -- These colors have 3 shades: base, bright, and dim
    --
    -- Defining just a color defines it's base color
    red = "#ff0000",
  },
  nightfox = {
    -- A specific style's value will be used over the `all`'s value
    red = "#c94f6d",
  },
  dayfox = {
    -- Defining multiple shades is done by passing a table
    blue = { base = "#4d688e", bright = "#4e75aa", dim = "#485e7d" },
  },
  nordfox = {
    -- A palette also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    bg1 = "#2e3440",

    -- sel is different types of selection colors.
    sel0 = "#3e4a5b", -- Popup bg, visual selection bg
    sel1 = "#4f6074", -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = "#60728a",
  },
}

-- Spec's (specifications) are a mapping of palettes to logical groups that will be
-- used by the groups. Some examples of the groups that specs map would be:
--   - syntax groups (functions, types, keywords, ...)
--   - diagnostic groups (error, warning, info, hints)
--   - git groups (add, removed, changed)
--
-- You can override these just like palettes
local specs = {
  -- As with palettes, the values defined under `all` will be applied to every style.
  all = {
    syntax = {
      -- Specs allow you to define a value using either a color or template. If the string does
      -- start with `#` the string will be used as the path of the palette table. Defining just
      -- a color uses the base version of that color.
      keyword = "magenta",

      -- Adding either `.bright` or `.dim` will change the value
      conditional = "magenta.bright",
      number = "orange.dim",
    },
    git = {
      -- A color define can also be used
      changed = "#f4a261",
    },
  },
  nightfox = {
    syntax = {
      -- As with palettes, a specific style's value will be used over the `all`'s value.
      operator = "orange",
    },
  },
}

-- Groups are the highlight group definitions. The keys of this table are the name of the highlight
-- groups that will be overridden. The value is a table with the following values:
--   - fg, bg, style, sp, link,
--
-- Just like `spec` groups support templates. This time the template is based on a spec object.
local groups = {
  -- As with specs and palettes, the values defined under `all` will be applied to every style.
  all = {
    -- If `link` is defined it will be applied over any other values defined
    Whitespace = { link = "Comment" }

    -- Specs are used for the template. Specs have their palette's as a field that can be accessed
    IncSearch = { bg = "palette.cyan" },
  },
  nightfox = {
    -- As with specs and palettes, a specific style's value will be used over the `all`'s value.
    PmenuSel = { bg = "#73daca", fg = "bg0" },
  },
}

require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
```

To find the list of syntax highlight groups defined for vim use the help `:help group-name` and
`:help nvim-treesitter-highlights` for treesitter. If you would also like to see how nightfox defines these highlight groups
you can see [syntax.lua] for vim's syntax and [treesitter.lua] for treesitter. These files list out all all highlight
groups and have a comment describing them. Another file to note is [editor.lua] which is the highlight groups respncible
for how vim looks (background, cursorline, tabline, etc...). To get the highlight group under your cursor see
[here](#syntax-highlight-groups) for more information

To get more information check out [Usage](./usage.md#configuration) or the help file `:help nightfox` for more detailed information.

[editor.lua]: https://github.com/EdenEast/nightfox.nvim/blob/main/lua/nightfox/group/editor.lua
[syntax.lua]: https://github.com/EdenEast/nightfox.nvim/blob/main/lua/nightfox/group/syntax.lua
[treesitter.lua]: https://github.com/EdenEast/nightfox.nvim/blob/main/lua/nightfox/group/modules/treesitter.lua

### Custom template values

Nightfox's `palettes` and `specs` can be extended with your own values. This is useful for users that want to
distinguish a spec value being used for multiple group definitions. This is best understood with an example:

`bg0` is used as the dark alternative background color. This is used in multiple areas (non-current file, status line,
normal float, etc...). If you would like to have the inactive color diffferent then the float / statusline color you can
define your own value in the `specs` table.

```lua
require("nightfox").setup({
  palettes = {
    -- Custom duskfox with black background
    duskfox = {
      bg1 = "#000000", -- Black background
      bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
      bg3 = "#121820", -- 55% darkened from stock
      sel0 = "#131b24", -- 55% darkened from stock
    },
  },
  specs = {
    all = {
      inactive = "bg0", -- Default value for other styles
    },
    duskfox = {
      inactive = "#090909", -- Slightly lighter then black background
    },
  },
  groups = {
    all = {
      NormalNC = { fg = "fg1", bg = "inactive" }, -- Non-current windows
    },
  },
})
```

## Api

Nightfox exposes some Api's and utility classes that let you fetch data from nightfox.

### Palettes

You can get the palettes used by each colorscheme:

```lua
-- Returns a table with each colorscheme and the palette associated with it
local palettes = require('nightfox.palette').load()

-- Returns the palette of the specified colorscheme
local palette = require('nightfox.palette').load("nightfox")

print(vim.inspect(palette.red))
-- {
--   base = "#c94f6d",
--   bright = "#d16983",
--   dim = "#ab435d",
-- }
```

See [Usage](./usage.md#palette) for more information on palettes.

### Specs

You can get the spec used by each colorscheme:

```lua
-- Returns a table with each colorscheme and the spec associated with it
local specs require('nightfox.spec').load()

-- Returns the spec of the specified colorscheme
local spec = require('nightfox.spec').load("nightfox")

print(vim.inspect(spec.git))
-- {
--   add = "#81b29a",
--   changed = "#dbc074",
--   removed = "#c94f6d"
-- }
```

See [Usage](./usage.md#spec) for more information on specs.

### Color lib

Nightfox uses a color library internally to manipulate colors. You can use this library as well.

```lua
local palette = require('nightfox.palette').load('nightfox')
local Color = require("nightfox.lib.color")

local bg = Color.from_hex(palette.bg1)
local red = Color.from_hex("#ff0000")

-- Blend the bg with red. The blend factor is from 0 to 1
-- with 0 being full bg and 1 being full red
local red_bg = bg:blend(red, 0.2)

print(red_bg:to_css())
-- "#471c26"

-- Brighten bg by adding 10 to the value of the color as a hsv
local alt_bg = bg:brighten(10)
print(vim.inspect(alt_bg:to_hsv()))
-- {
--   hue = 213.91304347826,
--   saturation = 47.916666666667,
--   value = 28.823529411765
-- }
```

There are a lot of useful functions to manipulate and work with colors in different color spaces.
See [Usage](./usage.md#color) for more information on `Color`.

## Compile

Nightfox is a highly customizable and configurable colorscheme. There are endless ways to customize nightfox. This does
however come at the cost of complexity and execution time. Nightfox can pre compute the results of your configuration
and store the results in a compiled lua file. After nightfox use these precached values to set it's highlights.

By default nightfox writes the compiled results into the system's `cache` directory. On unix this is
`$XDG_CACHE_HOME/nvim/nightfox` and on windows this is `%localappdata%\\Temp\\nvim\\nightfox`.

Nightfox provides functions to work with the nightfox compiler.

```lua
local nightfox = require('nightfox')

-- Create/update the compile files
nightfox.compile()

-- Delete compiled files
nightfox.clean()
```

Nightfox provides the following commands that wrap these functions above:

```vim
:NightfoxCompile
:NightfoxClean
```

## Interactive

Nightfox makes it easy to make changes to its config and see the results. For this nightfox exposes the command:

```
NightfoxInteractive
```

This command will attach an autocmd to the current buffer that executes on `BufferWritePost`. The
autocmd will clear nightfox's internal state and re-source it's config from the newly saved file. It will then reset the
colorscheme.

![demo](https://user-images.githubusercontent.com/2746374/163106922-aa7a2f40-0c67-4aed-addc-5c4444c3a814.gif)

There are a few things to note:

- Enabling interactive mode will clean any [compiled](#compile) files.
- This requires executing `luafile` on the current file. Any syntax errors will throw errors.
- If you are using packer and have nightfox's config in a `config = function() end` block, this will not work as packer
  would require to be re-compiled and the compiled file sourced.

## Supported Plugins

- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [fern.vim](https://github.com/lambdalisue/fern.vim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lsp-trouble.nvim](https://github.com/simrat39/lsp-trouble.nvim)
- [modes.nvim](https://github.com/mvllow/modes.nvim)
- [neogit](https://github.com/TimUntersberger/neogit)
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [pounce.nvim](https://github.com/rlane/pounce.nvim)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Status lines

### [Lualine]

Lualine checks the value of `vim.g.colors_name` (set when using `:colorscheme` command) to determine the theme to load.
Set your colorscheme before calling setup.

```lua
vim.cmd("colorscheme nightfox")
require('lualine').setup({ ... })
```

### [Lightline]

Lightline check the value of `vim.g.lightline.colorscheme`. It is not depend on
the value of `:colorscheme` command, Please set it.

```lua
vim.cmd("colorscheme nightfox")
vim.g.lightline = { colorscheme = "nightfox" } -- Or the name of colorscheme you use
```

## Syntax highlight groups

This section will help you determine what highlight group is being applied to a piece of syntax. These sections will
output the highlight group for the value under the cursor.

#### Treesitter highlighting

If treesitter is the highlighting method for the language in question you can use the command:
`:TSHighlightCapturesUnderCursor`. This command comes from the treesitter [playground] plugin. Make
sure you have this installed as well as [nvim-treesitter].

[playground]: https://github.com/nvim-treesitter/playground#show-treesitter-and-syntax-highlight-groups-under-the-cursor
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter

#### Vim highlighting

Add this vimscript function to your configuration.

<details>
<summary>vimscript highlight function</summary>

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

</details>

## Extra

There are [extra](./extra) configuration files for the following:

- [alacritty](https://github.com/alacritty/alacritty)
- [fish](https://fishshell.com/)
- [iterm](https://iterm2.com/index.html)
- [kitty](https://sw.kovidgoyal.net/kitty/overview/#configuring-kitty)
- [konsole](https://konsole.kde.org/)
- [tmux](https://github.com/tmux/tmux)
- [wezterm](https://wezfurlong.org/wezterm/config/appearance.html#defining-a-color-scheme-in-a-separate-file)
- [windows terminal](https://github.com/Microsoft/Terminal)
- [xresources](https://wiki.archlinux.org/title/X_resources)

[lualine]: https://github.com/nvim-lualine/lualine.nvim
[lightline]: https://github.com/itchyny/lightline.vim

## Acknowledgements

- [catppuccin](https://github.com/catppuccin/nvim/) (integration/modules)
- [rose-pine](https://github.com/rose-pine/nvim) (dawnfox/duskfox)
- [coolers](https://coolers.co) (useful color information and palette tool)
- [colorhexa](https://www.colorhexa.com/) (detailed color information)
- [neogit](https://github.com/TimUntersberger/neogit/blob/b688a2c/lua/neogit/lib/color.lua) (base for color lib)

## References

Some themes were inspired by wallpapers.

<details>
<summary>Nordfox</summary>
<img src="https://i.imgur.com/LzJYkpS.jpeg" alt="nordfox_reference" />
</details>

<details>
<summary>Terafox</summary>
<img src="https://torako.wakarimasen.moe/file/torako/wg/image/1622/83/1622838138777.jpg" alt="terafox_reference" />
</details>
