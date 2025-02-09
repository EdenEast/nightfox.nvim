local M = {}

function M.get(spec, config)
  local syn = spec.syntax
  local stl = config.styles

  -- TODO: add config style settings
  -- stylua: ignore
  return {
    Comment        = { fg = syn.comment, style = stl.comments }, -- any comment
    Constant       = { fg = syn.const, style = stl.constants }, -- (preferred) any constant
    String         = { fg = syn.string, style = stl.strings }, -- a string constant: "this is a string"
    Character      = { link = "String" }, -- a character constant: 'c', '\n'
    Number         = { fg = syn.number, style = stl.numbers }, -- a number constant: 234, 0xff
    Float          = { link = "Number" }, -- a floating point constant: 2.3e10
    Boolean        = { link = "Number" }, -- a boolean constant: TRUE, false

    Identifier     = { fg = syn.ident, style = stl.variables }, -- (preferred) any variable name
    Function       = { fg = syn.func, style = stl.functions }, -- function name (also: methods for classes)

    Statement      = { fg = syn.keyword, style = stl.keywords }, -- (preferred) any statement
    Conditional    = { fg = syn.conditional, style = stl.conditionals }, -- if, then, else, endif, switch, etc.
    Repeat         = { link = "Conditional" }, -- for, do, while, etc.
    Label          = { link = "Conditional" }, -- case, default, etc.

    Operator       = { fg = syn.operator, style = stl.operators }, -- "sizeof", "+", "*", etc.
    Keyword        = { fg = syn.keyword, style = stl.keywords }, -- any other keyword
    Exception      = { link = "Keyword" }, -- try, catch, throw

    PreProc        = { fg = syn.preproc, style = stl.preprocs }, -- (preferred) generic Preprocessor
    Include        = { link = "PreProc" }, -- preprocessor #include
    Define         = { link = "PreProc" }, -- preprocessor #define
    Macro          = { link = "PreProc" }, -- same as Define
    PreCondit      = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    Type           = { fg = syn.type, style = stl.types }, -- (preferred) int, long, char, etc.
    StorageClass   = { link = "Type" }, -- static, register, volatile, etc.
    Structure      = { link = "Type" }, -- struct, union, enum, etc.
    Typedef        = { link = "Type" }, -- A typedef

    Special        = { fg = syn.func }, -- (preferred) any special symbol
    SpecialChar    = { link = "Special" }, -- special character in a constant
    Tag            = { link = "Special" }, -- you can use CTRL-] on this
    Delimiter      = { link = "Special" }, -- character that needs attention
    SpecialComment = { link = "Special" }, -- special things inside a comment
    Debug          = { link = "Special" }, -- debugging statements

    Underlined     = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold           = { style = "bold" },
    Italic         = { style = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         = {}, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          = { fg = spec.diag.error }, -- (preferred) any erroneous construct
    Todo           = { fg = spec.bg1, bg = spec.diag.info }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr       = { link = "lineNr" },
    qfFileName     = { link = "Directory" },

    -- htmlH1       = {},
    -- htmlH2       = {},

    -- mkdHeading            = {},
    -- mkdCode               = {},
    -- mkdCodeDelimiter      = {},
    -- mkdCodeStart          = {},
    -- mkdCodeEnd            = {},
    -- mkdLink               = {},

    -- markdownHeadingDelimiter = {},
    -- markdownCode             = {},
    -- markdownCodeBlock        = {},
    -- markdownH1               = {},
    -- markdownH2               = {},
    -- markdownLinkText         = {},

    -- Diff filetype (runtime/syntax/diff.vim)
    diffAdded       = { fg = spec.git.add }, -- Added lines ("^+.*" | "^>.*")
    diffRemoved     = { fg = spec.git.removed },-- Removed lines ("^-.*" | "^<.*")
    diffChanged     = { fg = spec.git.changed }, -- Changed lines ("^! .*")
    diffOldFile     = { fg = spec.diag.warn }, -- Old file that is being diff against
    diffNewFile     = { fg = spec.diag.hint }, -- New file that is being compared to the old file
    diffFile        = { fg = spec.diag.info }, -- The filename of the diff ("diff --git a/readme.md b/readme.md")
    diffLine        = { fg = spec.syntax.builtin2 }, -- Line information ("@@ -169,6 +169,9 @@")
    diffIndexLine   = { fg = spec.syntax.preproc }, -- Index line of diff ("index bf3763d..94f0f62 100644")

    typescriptParens = { fg = syn.bracket,  }, -- For typescript
  }
end

return M
