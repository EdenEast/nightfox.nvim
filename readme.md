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
  <h3>Nightfox</h3><img src="https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nightfox-example.png" alt="nightfox" />
  <h3>Dayfox</h3><img src="https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-dayfox-example.png" alt="dayfox" />
  <h3>Dawnfox</h3><img src="https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-dawnfox-example.png" alt="dawnfox" />
  <h3>Duskfox</h3><img src="https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-duskfox-example.png" alt="duskfox" />
  <h3>Nordfox</h3><img src="https://github.com/EdenEast/nightfox.nvim/wiki/images/gallery-nordfox-example.png" alt="nordfox" />
</div>

## Features

- Support both vim and neovim
- Highly configurable with template overriding
- Support for multiple [plugins](#supported-plugins) and [status lines](#status-lines)
  - And many others should "just work"!
- [Compile](#compile) user's configuration
- Export [Color](#color-lib) library utility

## Requirements

- Neovim >= 0.5 **or** Vim with lua >= 5.2
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

There is no need to call `setup` if you dont require to change the default options and settings.

```lua
-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = util.join_paths(vim.fn.stdpath("cache"), "nightfox"),
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*)
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
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

To see a detailed explanation of nightfox's config settings concult either the builtin help `:help nightfox` or [usage.md]

[usage.md]: ./usage.md.

### Modules

Nightfox's modules store configuration information for various plugins and other neovim modules. To enable a module
either set the module to `true` or if the module has additional configuration information set `enable` to `true`.

To see a list of modules check the `help` or [usage.md] for more information.

### Customize pallets and groups

You can change the color `pallet` and the highlight `group` of nightfox. Here is a breif example:

```lua
-- Pallets are the base color defines of a colorscheme.
-- You can override these pallets for each colorscheme defined by nightfox
local pallets = {
  nightfox = {
    -- Each pallet defines these colors:
    --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
    --
    -- These colors have 3 shades: base, bright, and dim
    --
    -- Defining just a color defines it's base color
    red = "#c94f6d",
  },
  dayfox = {
    -- Defining multiple shades is done by passing a table
    blue = { base = "#4d688e", bright = "#4e75aa", dim = "#485e7d", }
  },
  nordfox = {
    -- A pallet also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    bg1 = "#2e3440"

    -- sel is different types of selection colors.
    sel0 = "#3e4a5b", -- Popup bg, visual selection bg
    sel1 = "#4f6074", -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = "#60728a",
  }
}

-- Spec's (specifications) are a mapping of pallets to logical groups that will be
-- used by the groups. Some examples of the groups that specs map would be:
--   - syntax groups (functions, types, keywords, ...)
--   - diagnostic groups (error, warning, info, hints)
--   - git groups (add, removed, changed)
--
-- You can override these just like pallets
local specs = {
  nightfox = {
    syntax = {
      -- Specs allow you to define a value using either a color or template. If the string does
      -- start with `#` the string will be used as the path of the pallet table. Defining just
      -- a color uses the base version of that color.
      keyword = "magenta",

      -- Adding either `.bright` or `.dim` will change the value
      conditional = "magenta.bright",
      number = "orange.dim"
    },
    git = {
      -- A color define can also be used
      changed = "#f4a261",
    }
  }
}

-- Groups are the highlight group definitions. The keys of this table are the name of the highlight
-- groups that will be overridden. The value is a table with the following values:
--   - fg, bg, style, sp, link,
--
-- Just like `spec` groups support templates. This time the template is based on a spec object.
local groups = {
  -- By default nightfox links some groups together. `CursorLine` is one of these groups. When overriding
  -- Make sure `link` is cleared to `""` so that the link will be removed.
  CursorLine = { bg = "sel1", link = "" },

  -- Specs are used for the template. Specs have their pallet's as a field that can be accessed
  IncSearch = { bg = "pallet.cyan" },
}

require("nightfox").setup({ pallets = pallets, specs = specs, groups = groups })

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
```

To get more information check out [usage.md] or the help file `:help nightfox` for more detailed information.

## Api

Nightfox exposes some Api's and utility classes that let you fetch data from nightfox.

### Pallets

You can get the pallets used by each colorscheme:

```lua
-- Returns a table with each colorscheme and the pallet associated with it
local pallets = require('nightfox.pallet').load()

-- Returns the pallet of the specified colorscheme
local pallet = require('nightfox.pallet').load("nightfox")

print(vim.insepct(pallet.red))
-- {
--   base = "#c94f6d",
--   bright = "#d16983",
--   dim = "#ab435d",
-- }
```

See TODO for more information on pallets.

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

See TODO for more information on specs.

### Color lib

Nightfox uses a color library internally to manipulate colors. You can use this library as well.

```lua
local pallet = require('nightfox.pallet').load('nightfox')
local Color = require("nightfox.lib.color")

local bg = Color.from_hex(pallet.bg1)
local red = Color.from_hex("#ff0000")

-- Blend the bg with red. The blend factor is from 0 to 1
-- with 0 being full bg and 1 being full red
local red_bg = bg:blend(red, 0.2)

print(red_bg:to_css())
-- "#471c26"

-- Brighten bg by adding 10 to the value of the color as a hsv
local alt_bg = bg:brighten(10)
print(alt_bg:to_hsv())
-- {
--   hue = 213.91304347826,
--   saturation = 47.916666666667,
--   value = 28.823529411765
-- }
```

There are a lot of useful functions to manipulate and work with colors in different color spaces.
See TODO for more information on `Color`.

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

## Supported Plugins

- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
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
- [neogit](https://github.com/TimUntersberger/neogit)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [vim-sneak](https://github.com/justinmk/vim-sneak)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Status lines

**Note:** For all status lines `nightfox` is the only valid name.

### [Lualine]

```lua
require('lualine').setup({
  options = {
    theme = "nightfox"
  }
})
```

[lualine]: https://github.com/nvim-lualine/lualine.nvim

## Acknowledgements

- [catppuccin](https://github.com/catppuccin/nvim/) (integration/modules)
- [rose-pine](https://github.com/rose-pine/nvim) (dawnfox/duskfox)
- [nord](https://i.imgur.com/LzJYkpS.jpeg) (nordfox reference image)
- [coolers](https://coolers.co) (Useful color information and pallet tool)
- [colorhexa](https://www.colorhexa.com/) (detailed color information)
