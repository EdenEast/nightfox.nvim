## Overview

Nightfox is a highly customizable theme for vim and neovim with support for lsp, treesitter and a variety of plugins.
It comes with multiple different styles to suite your preference. These are:

- `Nightfox`
- `Dayfox`
- `Dawnfox`
- `Duskfox`
- `Nordfox`

## Usage

At it's core nightfox is simply a colorscheme just like any other. If you just want to use the theme out of the box
simply set the colorscheme with the `:colorscheme` command

```vim
:colorscheme nightfox
```

Nightfox is built to be customizable. There are four main components that can be customized. These are [option],
[pallet], [spec], and [group].

[option]: #option
[pallet]: #pallet
[spec]: #spec
[group]: #group
[building]: #building

## Configuration

Nightfox allows you to set individual components separately as apposed to using the default `setup` function.

### Init

The `init()` function set nightfox's config [options][option].

```lua
require('nightfox').init({
  dim_inactive = true,
})
```

### Overrides

The individual components: [pallets][pallet], [specs][spec] and [groups][group] can be set separately.

```lua
local override = require('nightfox').override
override.pallets({
  nightfox = {
    red = "#c94f6d",
  },
  nordfox = {
    comment = "#60728a",
  },
})
override.specs({
  nightfox = {
    syntax = {
      keyword = "magenta"
    }
  }
})
override.groups({
  IncSearch = { bg = "pallet.cyan" },
})
```

### Setup

The setup function is a convince wrapper for the above components. It takes each component as seperate keys and calls
the correct init/override function.

```lua
local options = {
  dim_inactive = true,
}
local pallets = {
  nightfox = {
    red = "#c94f6d",
  },
  nordfox = {
    comment = "#60728a",
  },
}
local specs = {
  nightfox = {
    syntax = {
      keyword = "magenta"
    }
  }
}
local groups = {
  IncSearch = { bg = "pallet.cyan" },
}
require('nightfox').setup({
  options = options,
  pallets = pallets,
  specs = specs,
  groups = groups,
})
```

## Option

#### compile_path {path}

The output directory {path} where the compiled results will be written to. Default:
`vim.fn.stdpath("cache")/nightfox`.

#### compile_file_suffix {suffix}

The string appended to the compiled file. Each `style` outputs to its own file. These files will append the {suffix} to
the end of the file. Default: `_compiled`

#### transparent {bool}

A boolean value that if set will disable setting the background of `Normal`, `NormalNC` and other highlight groups. This
lets you use the colors of the colorscheme but use the background of your terminal. Default: `false`.

#### terminal_colors {bool}

A boolean value that if set will define the terminal colors for the builtin `terminal` (vim.g.terminal*color*\*).
Default: `true`.

#### dim_inactive {bool}

A boolean value that if set will set the background of Non current windows to be darker. See `:h hl-NormalNC`.

#### styles {table}

`styles` is a table that contains a list of syntax components and their corresponding style. These styles can be any
combination of |highlight-args|. The syntax components are the
:

```lua
local options = {
  styles = {
    comments = "italic",
    functions = "italic,bold",
  }
}
```

#### inverse {table}

`inverse` is a table that contains a list of highlight types. If a highlight type is enabled it will inverse the
foreground and background colors instead of applying the normal highlight group. Thees highlight types are: `match_paren`, `visual`, `search`. For an example if search is enabled instead of highlighting a search term with the default search color it will inverse
the foureground and background colors.

#### modules {table}

`modules` store configuration information for various plugins and other neovim modules. A module can either be a boolean
or a table that contains additional configuration for that module. If the value is a table it also has a field called
`enable` that will tell nightfox to load it. See [modules] for more information.

[modules]: #modules

## Shade

A `shade` is a way to group a `base` color with a `bright` and `dim` version. This is the base struct/object that pallet
colors will be defined from. For example:

```lua
local Shade = require("nightfox.lib.shade")
local red = Shade.new("#bf616a", "#d06f79", "#a54e56"),
print(vim.inspect(red))
-- {
--   base = "#bf616a",
--   bright = "#d06f79",
--   dim = "#a54e56",
-- }
```

This is just a convience structure for building pallet for nightfox and should not be used outside of it. This is noted
here to help understand the structure of a [pallet].

## Pallet

A `pallet` is the base color definitions of a style. Each style defines its own pallet to be used by the other
components. A pallet defines base colors, as well as foreground and background shades. Along with the foreground and
background colors a pallet also defines other colors such as selection and comment colors.

The base colors are [shade] objects that define a `base`, `bright`, and `dim` color. These base colors are:
`black`, `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white`, `orange`, `pink`.

| Key     | Description                           |
| ------- | ------------------------------------- |
| black   | Shade Color (Base, Bright, Dim)       |
| red     | Shade Color (Base, Bright, Dim)       |
| green   | Shade Color (Base, Bright, Dim)       |
| yellow  | Shade Color (Base, Bright, Dim)       |
| blue    | Shade Color (Base, Bright, Dim)       |
| magenta | Shade Color (Base, Bright, Dim)       |
| cyan    | Shade Color (Base, Bright, Dim)       |
| white   | Shade Color (Base, Bright, Dim)       |
| orange  | Shade Color (Base, Bright, Dim)       |
| pink    | Shade Color (Base, Bright, Dim)       |
| comment | Comment color                         |
| bg0     | Darker bg (status line and float)     |
| bg1     | Default bg                            |
| bg2     | Lighter bg (colorcolumn folds)        |
| bg3     | Lighter bg (cursor line)              |
| bg4     | Lighter bg (Conceal, boarder fg)      |
| fg0     | Lighter fg                            |
| fg1     | Default fg                            |
| fg2     | Darker fg (status line)               |
| fg3     | Darker fg (line numbers, fold colums) |
| sel0    | Popup bg, visual selection bg         |
| sel1    | Popup sel bg, search bg               |

## Spec

A `spec` or specification is a mapping of a pallet values to a logical group that is used by the [group].

The base of a `spec` is a re-export of the [pallet]'s `fg` `bg` and `sel`. The values that are re-exported are:
`bg0`, `bg1`, `bg2`, `bg3`, `bg4`, `fg0`, `fg1`, `fg2`, `fg3`, `sel0`, `sel1`.

#### spec.syntax

The `syntax` table maps [pallet] color values to syntax values to be used by the [group].

| Key         | Description                     |
| ----------- | ------------------------------- |
| bracket     | Brackets and Punctuation        |
| builtin0    | Builtin variable                |
| builtin1    | Builtin type                    |
| builtin2    | Builtin const                   |
| comment     | Comment                         |
| conditional | Conditional and loop            |
| const       | Constants, imports and booleans |
| dep         | Deprecated                      |
| field       | Field                           |
| func        | Functions and Titles            |
| ident       | Identifiers                     |
| keyword     | Keywords                        |
| number      | Numbers                         |
| operator    | Operators                       |
| preproc     | PreProc                         |
| regex       | Regex                           |
| statement   | Statements                      |
| string      | Strings                         |
| type        | Types                           |
| variable    | Variables                       |

#### spec.diag

The `diag` table maps [pallet] colors to vim diagnostic colors values.
These values are: `error`, `warn`, `info` and `hint`.

#### spec.diag_bg

The `diag_bg` table maps [pallet] colors to vim diagnostic background colors.
These values are: `error`, `warn`, `info` and `hint`.

#### spec.diff

The `diff` table maps [pallet] colors to vimdiff highlight colors.
These values are: `add`, `delete`, `change` and `text`.

#### spec.git

The `git` table maps [pallet] colors to git colors.
These values are: `add`, `removed`, and `changed`

## Group

A `group` is the definition of a `highlight-group`. The key of the group table is the `highlight-group` that will be
defined, and the table value is the arguments to the |:highlight| command.

| Key   | Help                | Description                                                |
| ----- | ------------------- | ---------------------------------------------------------- |
| fg    | \|highlight-guifg\| | The color value of the foreground of the highlight group   |
| bg    | \|highlight-guibg\| | The color value of the background of the highlight group   |
| sp    | \|highlight-guisp\| | The color for underlines and undercurls                    |
| style | \|highlight-gui\|   | The style of the highlight group. Ex `italic`, `bold`, etc |
| link  | \|highlight-link\|  | Link one `highlight-group` to another                      |

If the value of `link` is present and is not empty, nightfox will link the group to the corresponding value.

## Module

Modules are a way to adding extra information for various plugins or features. This also allows them to be enabled or
disabled. There are two types of modules, `base` modules and `extended` modules. A `base` modules do not have any other
information and are just a `boolean` denoting if it is enabled. An `extended` module is a module that has extra
customization information. It is a table that contains the additional configuration as well as a field called `enable`
to determine if the module is applied.

Current list of modules are:

- barbar
- cmp
- dashboard
- diagnostic
- fern
- fidget
- gitgutter
- gitsigns
- glyph_pallet
- hop
- illuminate
- lightspeed
- lsp_saga
- lsp_trouble
- native_lsp
- neogit
- nvimtree
- sneak
- telescope
- treesitter
- tsrainbow
- whichkey

### Extended modules

#### modules.diagnostic

This module sets highlight groups from `vim.diagnostic`.

| key        | type    | default | description                       |
| ---------- | ------- | ------- | --------------------------------- |
| background | boolean | `true`  | Set virtual text background color |

## Color

Nightfox exposes a color utility library to help with manipulating colors. This library can be required using the
following module:

```lua
local Color = require('nightfox.lib.color')

```

#### color.from_hex({hex})

Create a `Color` object from either a {hex} number or a `css-style` hex string (`"#RRGGBB[AA]"`).

#### color.from_rgba({red}, {green}, {blue}, {alpha})

Create a `Color` object from a `RGBA` value.
The {red}, {green} and {blue} components ranging from `[0,255]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color.from_hsv({hue}, {sat}, {value}, {alpha})

Create a `Color` object from a `HSV` value.
The {hue} is a float ranging `[0,360]`. {sat} and {value} are floats ranging from `[0,100]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color.from_hsl({hue}, {sat}, {lightness}, {alpha})

Create a `Color` object from a `HSL` value.
The {hue} is a float ranging `[0,360]`. {sat} and {lightness} are floats ranging from `[0,100]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color:to_hex({with_alpha})

Convert a `Color` object to a integer number. If {with_alpha} is true the hex value will be returned with the alpha
value added. This is defaulted to `false`.

#### color:to_hex({with_alpha})

Convert a `Color` object to a `css_style` string (`"#RRGGBB[AA]"`). If {with_alpha} is true the hex value will be
returned with the alpha value added. This is defaulted to `false`.

#### color:to_rgba()

Convert a `Color` object to a `RGBA` table. The resulting table will have `red`, `green`, `blue` and `alpha` components
as keys of the table.

#### color:to_hsv()

Convert a `Color` object to a `HSV` table. The resulting table will have `hue`, `saturation` and `value` components as
keys of the table.

#### color:to_hsl()

Convert a `Color` object to a `HSL` table. The resulting table will have `hue`, `saturation` and `lightness` components as
keys of the table.

#### color:blend({other}, {factor})

Returns a new `Color` that is a linear blend between two colors. {other} is the other color to blend. {factor} is the
percentage of the {other} color that will be blended. This percentage is represented `[0,1]` where `0` is no color
blending and `1` is entirely the {other} color.

#### color:shade({factor})

Returns a new `Color` that has been `shaded` by the {factor}. The factor is a precentage from `[0,1]` where `0` is black
and `1` is white.

#### color:brighten({value})

Returns a new `Color` with {value} added to the `value` (`hsv`) of the current color. This returns a lighter version of
of the current color if {value} is positive and a darker color is {value} is negative.

#### color:lighten({value})

Returns a new `Color` with {value} added to the `lightness` (`hsl`) of the current color. This returns a lighter version of
of the current color if {value} is positive and a darker color is {value} is negative.

#### color:saturate({value})

Returns a new `Color` with {value} added to the `saturation` (`hsv`) of the current color. This returns either a more
or less saturated version depending of +/- v.

#### color:rotate({value})

Returns a new `Color` with {value} added to the `hue` (`hsv`) of the current color. The resulting value of `hue` will be
wrapped from `[0,360]`, meaning that if the value exceeds `360` it will be wrapped back to `0`.

## Compile

Nightfox is a highly customizable and configurable colorscheme. There are endless ways to customize nightfox. This does
however come at the cost of complexity and execution time. Nightfox can pre compute the results of your configuration
and store the results in a compiled lua file. After nightfox use these precached values to set it's highlights.

By default nightfox writes the compiled results into the system's `cache` directory. On unix this is
`$XDG_CACHE_HOME/nvim/nightfox` and on windows this is `%localappdata%\\Temp\\nvim\\nightfox`.

### Compile commands

#### compile()

Compile nightfox settings for each `style` and write compiled file to [compile_path].

#### clean()

Delete compiled files in [compiled_path].

#### :NightfoxCompile

Compile nightfox settings for each `style` and write compiled file to [compile_path].

#### :NightfoxClean

Delete compiled files in [compiled_path].

[compile_path]: #compile_path-%7Bpath%7D
