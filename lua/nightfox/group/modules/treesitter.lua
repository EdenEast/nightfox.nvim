local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax
  local stl = config.styles
  local P = spec.palette

  local hl = {
    -- Identifiers ------------------------------------------------------------
    ["@variable"] = { fg = syn.variable, style = stl.variables }, -- various variable names
    ["@variable.builtin"] = { fg = syn.builtin0, style = stl.variables }, -- built-in variable names (e.g. `this`)
    ["@variable.parameter"] = { fg = syn.builtin1, stl.variables }, -- parameters of a function
    ["@variable.member"] = { fg = syn.field }, -- object and struct fields

    ["@constant"] = { link = "Constant" }, -- constant identifiers
    ["@constant.builtin"] = { fg = syn.builtin2, style = stl.keywords }, -- built-in constant values
    ["@constant.macro"] = { link = "Macro" }, -- constants defined by the preprocessor

    ["@module"] = { fg = syn.builtin1 }, -- modules or namespaces
    -- ["@module.builtin"] = { }, -- built-in modules or namespaces
    ["@label"] = { link = "Label" }, -- GOTO and other labels (e.g. `label:` in C), including heredoc labels

    -- Literals ---------------------------------------------------------------
    ["@string"] = { link = "String" }, -- string literals
    -- ["@string.documentation"] = { }, -- string documenting code (e.g. Python docstrings)
    ["@string.regexp"] = { fg = syn.regex, style = stl.strings }, -- regular expressions
    ["@string.escape"] = { fg = syn.regex, style = "bold" }, -- escape sequences
    ["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
    -- ["@string.special.symbol"] = { }, -- symbols or atoms
    ["@string.special.url"] = { fg = syn.const, style = "italic,underline" }, -- URIs (e.g. hyperlinks)
    -- ["@string.special.path"] = { }, -- filenames

    ["@character"] = { link = "Character" }, -- character literals
    ["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

    ["@boolean"] = { link = "Boolean" }, -- boolean literals
    ["@number"] = { link = "Number" }, -- numeric literals
    ["@number.float"] = { link = "Float" }, -- floating-point number literals

    -- Types ------------------------------------------------------------------
    ["@type"] = { link = "Type" }, -- type or class definitions and annotations
    ["@type.builtin"] = { fg = syn.builtin1, style = stl.types }, -- built-in types
    -- ["@type.definition"] = { }, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    -- ["@type.qualifier"] = { }, -- type qualifiers (e.g. `const`)

    ["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
    ["@property"] = { fg = syn.field }, -- the key in key/value pairs

    -- Functions --------------------------------------------------------------
    ["@function"] = { link = "Function" }, -- function definitions
    ["@function.builtin"] = { fg = syn.builtin0, style = stl.functions }, -- built-in functions
    -- ["@function.call"] = { }, -- function calls
    ["@function.macro"] = { fg = syn.builtin0, style = stl.functions }, -- preprocessor macros

    -- ["@function.method"] = { }, -- method definitions
    -- ["@function.method.call"] = { }, -- method calls

    ["@constructor"] = { fg = syn.ident }, -- constructor calls and definitions
    ["@operator"] = { link = "Operator" }, -- symbolic operators (e.g. `+` / `*`)

    -- Keywords ---------------------------------------------------------------
    ["@keyword"] = { link = "Keyword" }, -- keywords not fitting into specific categories
    -- ["@keyword.coroutine"] = { }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.function"] = { fg = syn.keyword, style = stl.functions }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.operator"] = { fg = syn.operator, style = stl.operators }, -- operators that are English words (e.g. `and` / `or`)
    ["@keyword.import"] = { link = "Include" }, -- keywords for including modules (e.g. `import` / `from` in Python)
    ["@keyword.storage"] = { link = "StorageClass" }, -- modifiers that affect storage in memory or life-time
    ["@keyword.repeat"] = { link = "Repeat" }, -- keywords related to loops (e.g. `for` / `while`)
    ["@keyword.return"] = { fg = syn.builtin0, style = stl.keywords }, -- keywords like `return` and `yield`
    -- ["@keyword.debug"] = { }, -- keywords related to debugging
    ["@keyword.exception"] = { link = "Exception" }, -- keywords related to exceptions (e.g. `throw` / `catch`)

    ["@keyword.conditional"] = { link = "Conditional" }, -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.ternary"] = { link = "Conditional" }, -- ternary operator (e.g. `?` / `:`)

    -- ["@keyword.directive"] = { }, -- various preprocessor directives & shebangs
    -- ["@keyword.directive.define"] = { }, -- preprocessor definition directives

    -- Punctuation ------------------------------------------------------------
    ["@punctuation.delimiter"] = { fg = syn.bracket }, -- delimiters (e.g. `;` / `.` / `,`)
    ["@punctuation.bracket"] = { fg = syn.bracket }, -- brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.special"] = { fg = syn.builtin1, style = stl.operators }, -- special symbols (e.g. `{}` in string interpolation)

    -- Comments ---------------------------------------------------------------
    ["@comment"] = { link = "Comment" }, -- line and block comments
    -- ["@comment.documentation"] = { link = "" }, -- comments documenting code

    ["@comment.error"] = { fg = spec.bg1, bg = spec.diag.error }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
    ["@comment.warning"] = { fg = spec.bg1, bg = spec.diag.warn }, -- warning-type comments (e.g. `WARNING:`, `FIX:`, `HACK:`)
    ["@comment.todo"] = { fg = spec.bg1, bg = spec.diag.hint }, -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
    ["@comment.note"] = { fg = spec.bg1, bg = spec.diag.info }, -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)

    -- Markup -----------------------------------------------------------------
    ["@markup"] = { fg = spec.fg1 }, -- For strings considerated text in a markup language.
    ["@markup.strong"] = { fg = P.red:subtle(), style = "bold" }, -- bold text
    ["@markup.italic"] = { link = "Italic" }, -- italic text
    ["@markup.strikethrough"] = { fg = spec.fg1, style = "strikethrough" }, -- struck-through text
    ["@markup.underline"] = { link = "Underline" }, -- underlined text (only for literal underline markup!)

    ["@markup.heading"] = { link = "Title" }, -- headings, titles (including markers)

    ["@markup.quote"] = { fg = spec.fg2 }, -- block quotes
    ["@markup.math"] = { fg = syn.func }, -- math environments (e.g. `$ ... $` in LaTeX)
    -- ["@markup.environment"] = { }, -- environments (e.g. in LaTeX)

    ["@markup.link"] = { fg = syn.keyword, style = "bold" }, -- text references, footnotes, citations, etc.
    ["@markup.link.label"] = { link = "Special" }, -- link, reference descriptions
    ["@markup.link.url"] = { fg = syn.const, style = "italic,underline" }, -- URL-style links

    ["@markup.raw"] = { fg = syn.ident, style = "italic" }, -- literal or verbatim text (e.g. inline code)
    ["@markup.raw.block"] = { fg = P.pink.base }, -- literal or verbatim text as a stand-alone block (use priority 90 for blocks with injections)

    ["@markup.list"] = { fg = syn.builtin1, style = stl.operators }, -- list markers
    ["@markup.list.checked"] = { fg = P.green.base }, -- checked todo-style list markers
    ["@markup.list.unchecked"] = { fg = P.yellow.base }, -- unchecked todo-style list markers

    ["@diff.plus"] = { link = "diffAdded" }, -- added text (for diff files)
    ["@diff.minus"] = { link = "diffRemoved" }, -- deleted text (for diff files)
    ["@diff.delta"] = { link = "diffChanged" }, -- changed text (for diff files)

    ["@tag"] = { fg = syn.keyword }, -- XML-style tag names (and similar)
    ["@tag.attribute"] = { fg = syn.func, style = "italic" }, -- XML-style tag attributes
    ["@tag.delimiter"] = { fg = syn.builtin1 }, -- XML-style tag delimiters

    -- Misc -------------------------------------------------------------------
    -- ["@none"] = { }, -- completely disable the highlight
    -- ["@conceal"] = { }, -- captures that are only meant to be concealed

    -- ["@spell"] = { }, -- for defining regions to be spellchecked
    -- ["@nospell"] = { }, -- for defining regions that should NOT be spellchecked

    -- Language specific -------------------------------------------------------

    -- json
    ["@label.json"] = { fg = syn.func }, -- For labels: label: in C and :label: in Lua.

    -- lua
    ["@constructor.lua"] = { fg = spec.fg2 }, -- Lua's constructor is { }

    -- rust
    ["@field.rust"] = { fg = spec.fg2 },

    -- yaml
    ["@variable.member.yaml"] = { fg = syn.func }, -- For fields.
  }

  -- Legacy highlights
  hl["@parameter"] = hl["@variable.parameter"]
  hl["@field"] = hl["@variable.member"]
  hl["@namespace"] = hl["@module"]
  hl["@float"] = hl["@number.float"]
  hl["@symbol"] = hl["@string.special.symbol"]
  hl["@string.regex"] = hl["@string.regexp"]

  hl["@text"] = hl["@markup"]
  hl["@text.strong"] = hl["@markup.strong"]
  hl["@text.emphasis"] = hl["@markup.italic"]
  hl["@text.underline"] = hl["@markup.underline"]
  hl["@text.strike"] = hl["@markup.strikethrough"]
  hl["@text.uri"] = hl["@markup.link.url"]
  hl["@text.math"] = hl["@markup.math"]
  hl["@text.environment"] = hl["@markup.environment"]
  hl["@text.environment.name"] = hl["@markup.environment.name"]

  hl["@text.title"] = hl["@markup.heading"]
  hl["@text.literal"] = hl["@markup.raw"]
  hl["@text.reference"] = hl["@markup.link"]

  hl["@text.todo.checked"] = hl["@markup.list.checked"]
  hl["@text.todo.unchecked"] = hl["@markup.list.unchecked"]

  -- @text.todo is now for todo comments, not todo notes like in markdown
  hl["@text.todo"] = hl["@comment.todo"]
  hl["@text.warning"] = hl["@comment.warning"]
  hl["@text.note"] = hl["@comment.note"]
  hl["@text.danger"] = hl["@comment.error"]

  -- @text.uri is now
  -- > @markup.link.url in markup links
  -- > @string.special.url outside of markup
  hl["@text.uri"] = hl["@markup.link.uri"]

  hl["@method"] = hl["@function.method"]
  hl["@method.call"] = hl["@function.method.call"]

  hl["@text.diff.add"] = hl["@diff.plus"]
  hl["@text.diff.delete"] = hl["@diff.minus"]

  hl["@define"] = hl["@keyword.directive.define"]
  hl["@preproc"] = hl["@keyword.directive"]
  hl["@storageclass"] = hl["@keyword.storage"]
  hl["@conditional"] = hl["@keyword.conditional"]
  hl["@exception"] = hl["@keyword.exception"]
  hl["@include"] = hl["@keyword.import"]
  hl["@repeat"] = hl["@keyword.repeat"]

  hl["@variable.member.yaml"] = hl["@field.yaml"]

  hl["@text.title.1.markdown"] = hl["@markup.heading.1.markdown"]
  hl["@text.title.2.markdown"] = hl["@markup.heading.2.markdown"]
  hl["@text.title.3.markdown"] = hl["@markup.heading.3.markdown"]
  hl["@text.title.4.markdown"] = hl["@markup.heading.4.markdown"]
  hl["@text.title.5.markdown"] = hl["@markup.heading.5.markdown"]
  hl["@text.title.6.markdown"] = hl["@markup.heading.6.markdown"]

  return hl
end

return M
