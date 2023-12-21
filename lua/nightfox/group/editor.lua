local M = {}

function M.get(spec, config)
  local trans = config.transparent
  local inactive = config.dim_inactive
  local inv = config.inverse
  local fg_search = spec.palette.meta.light and "#FFFFFF" or "#000000"

 -- stylua: ignore
 return {
    ColorColumn     = { bg = spec.bg2 }, -- used for the columns set with 'colorcolumn'
    Conceal         = { fg = spec.bg4 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor          = { fg = spec.bg1, bg = spec.fg1 }, -- character under the cursor
    lCursor         = { link = "Cursor" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM        = { link = "Cursor" }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn    = { link = "CursorLine" }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine      = { bg = spec.bg3 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory       = { fg = spec.syntax.func }, -- directory names (and other special names in listings)
    DiffAdd         = { bg = spec.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange      = { bg = spec.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete      = { bg = spec.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText        = { bg = spec.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer     = { fg = spec.bg1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor      = {}, -- cursor in a focused terminal
    -- TermCursorNC    = {}, -- cursor in an unfocused terminal
    ErrorMsg        = { fg = spec.diag.error }, -- error messages on the command line
    WinSeparator    = { fg = spec.bg0 }, -- the column separating vertically split windows
    VertSplit       = { link = "WinSeparator" }, -- the column separating vertically split windows
    Folded          = { fg = spec.fg3, bg = spec.bg2 }, -- line used for closed folds
    FoldColumn      = { fg = spec.fg3 }, -- 'foldcolumn'
    SignColumn      = { fg = spec.fg3 }, -- column where |signs| are displayed
    SignColumnSB    = { link = "SignColumn" }, -- column where |signs| are displayed
    Substitute      = { fg = spec.bg1, bg = spec.diag.error }, -- |:substitute| replacement text highlighting
    LineNr          = { fg = spec.fg3 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr    = { fg = spec.diag.warn, style = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen      = { fg = spec.diag.warn, style = inv.match_paren and "reverse,bold" or "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg         = { fg = spec.diag.warn, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- NOTE: This was commented out as there is an issue with seting this highlight group see issue #98
    -- MsgArea         = { fg = spec.fg2 }, -- Area for messages and cmdline
    -- MsgSeparator    = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg         = { fg = spec.diag.info, style = "bold" }, -- |more-prompt|
    NonText         = { fg = spec.bg4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal          = { fg = spec.fg1, bg = trans and "NONE" or spec.bg1 }, -- normal text
    NormalNC        = { fg = spec.fg1, bg = (inactive and spec.bg0) or (trans and "NONE") or spec.bg1 }, -- normal text in non-current windows
    NormalFloat     = { fg = spec.fg1, bg = spec.bg0 }, -- Normal text in floating windows.
    FloatBorder     = { fg = spec.fg3 }, -- TODO
    Pmenu           = { fg = spec.fg1, bg = spec.sel0 }, -- Popup menu: normal item.
    PmenuSel        = { bg = spec.sel1 }, -- Popup menu: selected item.
    PmenuSbar       = { link = "Pmenu" }, -- Popup menu: scrollbar.
    PmenuThumb      = { bg = spec.sel1 }, -- Popup menu: Thumb of the scrollbar.
    Question        = { link = "MoreMsg" }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine    = { link = "CursorLine" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search          = inv.search and { style = "reverse" } or { fg = spec.fg1, bg = spec.sel1 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch       = inv.search and { style = "reverse" } or { fg = spec.bg1, bg = spec.diag.hint }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch       = { link = "IncSearch"}, -- Search result under cursor (available since neovim >0.7.0 (https://github.com/neovim/neovim/commit/b16afe4d556af7c3e86b311cfffd1c68a5eed71f)).
    SpecialKey      = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad        = { sp = spec.diag.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap        = { sp = spec.diag.warn, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal      = { sp = spec.diag.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare       = { sp = spec.diag.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine      = { fg = spec.fg2, bg = spec.bg0 }, -- status line of current window
    StatusLineNC    = { fg = spec.fg3, bg = spec.bg0 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

    TabLine         = { fg = spec.fg2, bg = spec.bg2 }, -- tab pages line, not active tab page label
    TabLineFill     = { bg = spec.bg0 }, -- tab pages line, where there are no labels
    TabLineSel      = { fg = spec.bg1, bg = spec.fg3 }, -- tab pages line, active tab page label
    Title           = { fg = spec.syntax.func, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual          = inv.visual and { style = "reverse" } or { bg = spec.sel0 }, -- Visual mode selection
    VisualNOS       = inv.visual and { style = "reverse" } or { link = "visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg      = { fg = spec.diag.warn }, -- warning messages
    Whitespace      = { fg = spec.bg3 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu        = { link = "Pmenu" }, -- current match in 'wildmenu' completion
    WinBar          = { fg = spec.fg3, bg = trans and "NONE" or spec.bg1, style = "bold" }, -- Window bar of current window.
    WinBarNC        = { fg = spec.fg3, bg = trans and "NONE" or inactive and spec.bg0 or spec.bg1, style = "bold" }, --Window bar of not-current windows.

    -- qfLineNr        = {},
    -- qfFileName      = {},

    -- debugPC         = {}, -- used for highlighting the current line in terminal-debug
    -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug
 }
end

return M
