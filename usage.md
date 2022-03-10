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
[pallet], [spec], and [group]. To understand how nightfox loads the colorscheme before applying it see [building]
section.

[option]: #option
[pallet]: #pallet
[spec]: #spec
[group]: #group
[building]: #building

## Option

#### transparent {bool}

A boolean value that if set will disable setting the background of `Normal`, `NormalNC` and other highlight groups. This
lets you use the colors of the colorscheme but use the background of your terminal.

#### terminal_colors {bool}

A boolean value that if set will define the terminal colors for the builtin `terminal` (vim.g.terminal*color*\*).

#### dim_inactive {bool}

A boolean value that if set will set the background of Non current windows to be darker. See `:h hl-NormalNC`.

#### styles {table}

`styles` is a table that contains a list of syntax components and their corresponding style. These styles can be any
combination of `highlight-args`. See `:help highlight-args` for more information. The syntax components are the
following: `comments`, `functions`, `keywords`, `numbers`, `strings`, `types`, `variables`

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

### spec.syntax

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

### spec.diag

The `diag` table maps [pallet] colors to vim diagnostic colors values.
These values are: `error`, `warn`, `info` and `hint`.

### spec.diag_bg

The `diag_bg` table maps [pallet] colors to vim diagnostic background colors.
These values are: `error`, `warn`, `info` and `hint`.

### spec.diff

The `diff` table maps [pallet] colors to vimdiff highlight colors.
These values are: `add`, `delete`, `change` and `text`.

### spec.git

The `git` table maps [pallet] colors to git colors.
These values are: `add`, `removed`, and `changed`

## Group

A `group` is the definition of a `highlight-group`. The key of the group table is the `highlight-group` that will be
defined, and the table value is the arguments to the |:highlight| command.

| Key   | Help                | Description                                                |
|-------|---------------------|------------------------------------------------------------|
| fg    | \|highlight-guifg\| | The color value of the foreground of the highlight group   |
| bg    | \|highlight-guibg\| | The color value of the background of the highlight group   |
| sp    | \|highlight-guisp\| | The color for underlines and undercurls                    |
| style | \|highlight-gui\|   | The style of the highlight group. Ex `italic`, `bold`, etc |
| link  | \|highlight-link\|  | Link one `highlight-group` to another                      |

If the value of `link` is present and is not empty, nightfox will link the group to the corresponding value.


## Module

TODO

## Api

TODO

## Building

## Actually configuring
