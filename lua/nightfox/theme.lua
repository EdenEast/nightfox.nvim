local util = require("nightfox.util")

local M = {}

function M.apply(colors, config)
  config = config or require("nightfox.config").options
  colors = colors or require("nightfox.colors").load()

  local theme = {}
  theme.config = config
  theme.colors = colors
  theme.name = colors.meta.name
  local c = theme.colors
  local light = c.meta.light

  -- Depending if this colorscheme is light or dark I want either bright or dim modes.
  local alt_orange = light and c.orange_dm or c.orange_br
  local alt_magenta = light and c.magenta_dm or c.magenta_br

  theme.groups = {
    Comment = { fg = c.comment, style = config.styles.comments }, -- any comment
    ColorColumn = { bg = c.bg_visual }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.comment }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor = {}, -- cursor in a focused terminal
    -- TermCursorNC = {}, -- cursor in an unfocused terminal
    ErrorMsg = { fg = c.error }, -- error messages on the command line
    VertSplit = { fg = c.border }, -- the column separating vertically split windows
    Folded = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
    FoldColumn = { bg = c.bg, fg = c.comment }, -- 'foldcolumn'
    SignColumn = { bg = config.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
    SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
    Substitute = { bg = c.red, fg = c.subtle }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.fg_alt }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.orange, style = config.inverse.match_paren and "inverse,bold" or "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg_alt, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg_alt }, -- Area for messages and cmdline
    MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue }, -- |more-prompt|
    NonText = { fg = c.comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- normal text
    NormalNC = { fg = c.fg, bg = config.transparent and c.none or config.alt_nc and c.bg_alt or c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in non-current windows
    NormalFloat = { fg = c.fg, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder = { fg = c.border_highlight },
    Pmenu = { bg = c.bg_popup, fg = c.fg_alt }, -- Popup menu: normal item.
    PmenuSel = { fg = c.cyan, bg = c.bg_highlight }, -- Popup menu: selected item.
    PmenuSbar = { bg = light and util.darken(c.bg_popup, 0.2) or util.lighten(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.bg_visual, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = config.inverse.search and { style = "inverse" } or { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = config.inverse.search and { style = "inverse" } or { bg = c.cyan, fg = c.subtle }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    SpecialKey = { fg = c.comment }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { bg = c.bg_highlight, fg = c.fg_alt }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.bg_statusline }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.fg_alt, bg = c.fg_gutter }, -- tab pages line, active tab page label
    Title = { fg = c.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = config.inverse.visual and { style = "inverse" } or { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS = config.inverse.visual and { style = "inverse" } or { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.warning }, -- warning messages
    Whitespace = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.orange }, -- (preferred) any constant
    String = { fg = c.green, style = config.styles.strings }, --   a string constant: "this is a string"
    Character = { fg = c.green }, --  a character constant: 'c', '\n'
    Number = { fg = alt_orange }, --   a number constant: 234, 0xff
    Float = { fg = alt_orange }, --    a floating point constant: 2.3e10
    Boolean = { fg = alt_orange }, --  a boolean constant: TRUE, false

    Identifier = { fg = c.cyan, style = config.styles.variables }, -- (preferred) any variable name
    Function = { fg = c.blue, style = config.styles.functions }, -- function name (also: methods for classes)

    Statement = { fg = alt_magenta }, -- (preferred) any statement
    Conditional = { fg = alt_magenta }, --  if, then, else, endif, switch, etc.
    Repeat = { fg = alt_magenta }, --   for, do, while, etc.
    Label = { fg = alt_magenta }, --    case, default, etc.
    Operator = { fg = c.fg_alt }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.magenta, style = config.styles.keywords }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc = { fg = c.pink }, -- (preferred) generic Preprocessor
    Include = { fg = c.pink }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.yellow }, -- (preferred) int, long, char, etc.
    StorageClass = { fg = c.yellow }, -- static, register, volatile, etc.
    Structure = { fg = c.yellow }, --  struct, union, enum, etc.
    Typedef = { fg = c.yellow }, --  A typedef

    Special = { fg = c.blue }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold = { style = "bold" },
    Italic = { style = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = c.error }, -- (preferred) any erroneous construct
    Todo = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { fg = c.yellow },
    qfFileName = { fg = c.blue },

    htmlH1 = { fg = c.magenta, style = "bold" },
    htmlH2 = { fg = c.blue, style = "bold" },

    -- mkdHeading = { fg = c.orange, style = "bold" },
    -- mkdCode = { bg = c.terminal_black, fg = c.fg },
    mkdCodeDelimiter = { bg = c.terminal_black, fg = c.fg },
    mkdCodeStart = { fg = c.cyan, style = "bold" },
    mkdCodeEnd = { fg = c.cyan, style = "bold" },
    -- mkdLink = { fg = c.blue, style = "underline" },

    markdownHeadingDelimiter = { fg = c.orange, style = "bold" },
    markdownCode = { fg = c.cyan },
    markdownCodeBlock = { fg = c.cyan },
    markdownH1 = { fg = c.magenta, style = "bold" },
    markdownH2 = { fg = c.blue, style = "bold" },
    markdownLinkText = { fg = c.blue, style = "underline" },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = util.darken(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticDefaultError = { fg = c.error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticDefaultWarning = { fg = c.warning }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticDefaultInformation = { fg = c.info }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticDefaultHint = { fg = c.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    DiagnosticVirtualTextError = { bg = util.darken(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarning = { bg = util.darken(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInformation = { bg = util.darken(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = util.darken(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { style = "undercurl", sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint }, -- Used to underline "Hint" diagnostics

    -- Support versions of Neovim prior to this change:
    -- https://github.com/neovim/neovim/pull/15585
    -- Lsp color groups for nvim 0.5.x
    LspDiagnosticsSignWarning = { link = "DiagnosticSignWarn" },
    LspDiagnosticsDefaultWarning = { link = "DiagnosticDefaultWarn" },
    LspDiagnosticsFloatingWarning = { link = "DiagnosticFloatingWarn" },
    LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
    LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },

    LspDiagnosticsSignHint = { link = "DiagnosticSignHint" },
    LspDiagnosticsDefaultHint = { link = "DiagnosticDefaultHint" },
    LspDiagnosticsVirtualTextHint = { link = "DiagnosticFloatingHint" },
    LspDiagnosticsFloatingHint = { link = "DiagnosticVirtualTextHint" },
    LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },

    LspDiagnosticsSignError = { link = "DiagnosticSignError" },
    LspDiagnosticsDefaultError = { link = "DiagnosticDefaultError" },
    LspDiagnosticsFloatingError = { link = "DiagnosticFloatingError" },
    LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
    LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },

    LspDiagnosticsSignInformation = { link = "DiagnosticSignInfo" },
    LspDiagnosticsDefaultInformation = { link = "DiagnosticDefaultInfo" },
    LspDiagnosticsFloatingInformation = { link = "DiagnosticFloatingInfo" },
    LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
    LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },

    LspSignatureActiveParameter = { fg = c.orange },
    LspCodeLens = { fg = c.comment }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    TSNote = { fg = c.bg, bg = c.info },
    TSWarning = { fg = c.bg, bg = c.warning },
    TSDanger = { fg = c.bg, bg = c.error },
    TSConstructor = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    TSConstant = { fg = c.orange }, -- For constants
    TSConstBuiltin = { fg = alt_orange }, -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = c.blue }, -- For fields.
    rustTSField = { fg = c.fg_alt },
    -- TSFloat             = { };    -- For floats.
    -- TSFunction = { fg = c.fg_gutter }, -- For function (calls and definitions).
    TSFuncBuiltin = { fg = c.cyan }, -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro = { fg = c.red }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = c.magenta, style = config.styles.keywords }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = c.magenta, style = config.styles.functions }, -- For keywords used to define a fuction.
    TSLabel = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    TSNamespace = { fg = c.cyan }, -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = c.fg_alt }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = alt_orange }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { fg = c.green }, -- Same as `TSField`.
    tomlTSProperty = { fg = c.blue }, -- Differentiates between string and properties
    TSPunctDelimiter = { fg = c.fg_alt }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = c.fg_alt }, -- For brackets and parens.
    TSPunctSpecial = { fg = c.harsh }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = c.blue, style = config.styles.strings }, -- For regexes.
    TSStringEscape = { fg = c.magenta, style = config.styles.strings }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    TSTypeBuiltin = { fg = c.cyan }, -- For builtin types.
    TSVariable = { style = config.styles.variables }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = c.cyan },
    TSEmphasis = { style = "italic" }, -- For text to be represented with emphasis (italics).
    TSUnderline = { style = "underline" }, -- For text to be represented with an underline.
    TSStrike = { style = "strikethrough" }, -- For strikethrough text.
    TSStrong = { style = "bold" }, -- For bold text
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    TSURI = { fg = c.orange }, -- Any URI like a link or email.

    -- Plugins ------------------------------------------------------------------------------------

    -- LspTrouble
    LspTroubleText = { fg = c.fg_alt },
    LspTroubleCount = { fg = c.magenta, bg = c.fg_gutter },
    LspTroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    -- Illuminate
    illuminatedWord = { bg = c.fg_gutter },
    illuminatedCurWord = { bg = c.fg_gutter },

    -- diff
    diffAdded = { fg = c.git.add },
    diffRemoved = { fg = c.git.delete },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.magenta },

    -- Neogit
    NeogitBranch = { fg = c.magenta },
    NeogitRemote = { fg = c.pink },
    NeogitHunkHeader = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight = { bg = c.fg_gutter, fg = c.blue },
    NeogitDiffContextHighlight = { bg = util.darken(c.fg_gutter, 0.5), fg = c.fg_alt },
    NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },

    -- GitGutter
    GitGutterAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.border_highlight },
    TelescopeSelectionCaret = { fg = c.cyan },
    TelescopeSelection = { fg = c.cyan, bg = c.bg_highlight },
    TelescopeMatching = { fg = c.blue },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg_sidebar, bg = config.transparent and c.none or c.bg_sidebar },
    NvimTreeFolderIcon = { fg = c.comment },
    NvimTreeRootFolder = { fg = c.orange, style = "bold" },
    NvimTreeSymlink = { fg = c.magenta },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.comment },
    NvimTreeOpenedFolderName = { fg = c.blue_br },
    NvimTreeOpenedFile = { fg = c.magenta }, -- TODO: not working
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeSpecialFile = { fg = c.cyan },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    LspDiagnosticsError = { fg = c.error },
    LspDiagnosticsWarning = { fg = c.warning },
    LspDiagnosticsInformation = { fg = c.info },
    LspDiagnosticsHint = { fg = c.hint },

    -- Fern
    FernBranchText = { fg = c.blue },

    -- glyph palette
    GlyphPalette0 = { fg = c.black },
    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette5 = { fg = c.magenta },
    GlyphPalette6 = { fg = c.cyan },
    GlyphPalette7 = { fg = c.white },
    GlyphPalette8 = { fg = c.black_br },
    GlyphPalette9 = { fg = c.red_br },
    GlyphPalette10 = { fg = c.green_br },
    GlyphPalette11 = { fg = c.yellow_br },
    GlyphPalette12 = { fg = c.blue_br },
    GlyphPalette13 = { fg = c.magenta_br },
    GlyphPalette14 = { fg = c.cyan_br },
    GlyphPalette15 = { fg = c.white_br },

    -- Dashboard
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader = { fg = c.yellow },
    DashboardCenter = { fg = c.green },
    DashboardFooter = { fg = c.orange, style = "italic" },

    -- WhichKey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.comment },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.comment },

    -- LspSaga
    DiagnosticWarning = { fg = c.warning },
    DiagnosticInformation = { fg = c.info },

    LspFloatWinNormal = { bg = c.bg_float },
    LspFloatWinBorder = { fg = c.border_highlight },
    LspSagaBorderTitle = { fg = c.cyan },
    LspSagaHoverBorder = { fg = c.blue },
    LspSagaRenameBorder = { fg = c.green },
    LspSagaDefPreviewBorder = { fg = c.green },
    LspSagaCodeActionBorder = { fg = c.blue },
    LspSagaFinderSelection = { fg = c.bg_visual },
    LspSagaCodeActionTitle = { fg = c.blue1 },
    LspSagaCodeActionContent = { fg = c.purple },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount = { fg = c.purple },
    DefinitionCount = { fg = c.purple },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.cyan },

    -- NeoVim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green_br },
    healthWarning = { fg = c.warning },

    -- Barbar
    BufferCurrent = { bg = c.fg_gutter, fg = c.fg },
    BufferCurrentIndex = { bg = c.fg_gutter, fg = c.info },
    BufferCurrentMod = { bg = c.fg_gutter, fg = c.warning },
    BufferCurrentSign = { bg = c.fg_gutter, fg = c.info },
    BufferCurrentTarget = { bg = c.fg_gutter, fg = c.red },
    BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    BufferInactive = { bg = c.bg_statusline, fg = c.comment },
    BufferInactiveIndex = { bg = c.bg_statusline, fg = c.comment },
    BufferInactiveMod = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    BufferInactiveSign = { bg = c.bg_statusline, fg = c.border_highlight },
    BufferInactiveTarget = { bg = c.bg_statusline, fg = c.red },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },
    BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },

    -- Sneak
    Sneak = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.bg_visual },

    -- Hop
    HopNextKey = { fg = c.cyan, style = "bold" },
    HopNextKey1 = { fg = c.blue, style = "bold" },
    HopNextKey2 = { fg = util.darken(c.blue, 0.3) },
    HopUnmatched = { fg = c.comment },

    -- Symbol outline
    FocusedSymbol = { bg = c.bg_search },

    LightspeedGreyWash = { fg = c.comment },

    -- cmp
    CmpItemKindAbbr = { fg = c.fg },
    CmpItemKindDefault = { fg = c.fg_alt },

    CmpItemAbbrDeprecated = { fg = c.comment, style = "strikethrough" },

    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrMatchFuzzy = { fg = c.blue },

    CmpItemKindVariable = { fg = c.cyan },
    CmpItemKindInterface = { fg = c.cyan },

    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },

    CmpItemKindText = { fg = c.fg },
    CmpItemKindKeyword = { fg = c.magenta },
    CmpItemKindUnit = { fg = c.magenta },
    CmpItemKindProperty = { fg = c.green },
    CmpItemKindField = { fg = c.green },

    CmpItemKindClass = { fg = c.yellow },
    CmpItemKindModule = { fg = c.yellow },
    CmpItemKindStruct = { fg = c.yellow },

    -- TS Rainbow
    rainbowcol1 = { fg = c.red },
    rainbowcol2 = { fg = c.yellow },
    rainbowcol3 = { fg = c.green },
    rainbowcol4 = { fg = c.blue },
    rainbowcol5 = { fg = c.cyan },
    rainbowcol6 = { fg = c.magenta },
    rainbowcol7 = { fg = c.pink },
  }

  return theme
end

return M
