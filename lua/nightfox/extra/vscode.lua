local template = require("nightfox.util.template")

local M = {}

-- VS Code color theme. The token colors mirror `group/syntax.lua` and
-- `group/modules/treesitter.lua`, mapped onto TextMate scopes so the theme
-- also works in TextMate-based highlighters (e.g. Shiki).
function M.generate(spec, _)
  local content = [[
{
  "$schema": "vscode://schemas/color-theme",
  "name": "${palette.meta.name}",
  "type": "${_type}",
  "semanticHighlighting": true,
  "colors": {
    "foreground": "${fg1}",
    "focusBorder": "${sel1}",
    "selection.background": "${sel0}",
    "editor.background": "${bg1}",
    "editor.foreground": "${fg1}",
    "editor.lineHighlightBackground": "${bg3}",
    "editor.selectionBackground": "${sel0}",
    "editor.findMatchBackground": "${sel1}",
    "editor.findMatchHighlightBackground": "${sel1}",
    "editorCursor.foreground": "${fg1}",
    "editorLineNumber.foreground": "${fg3}",
    "editorLineNumber.activeForeground": "${diag.warn}",
    "editorBracketMatch.border": "${diag.warn}",
    "editorWhitespace.foreground": "${bg3}",
    "editorIndentGuide.background1": "${bg3}",
    "editorError.foreground": "${diag.error}",
    "editorWarning.foreground": "${diag.warn}",
    "editorInfo.foreground": "${diag.info}",
    "editorHint.foreground": "${diag.hint}",
    "editorGutter.addedBackground": "${git.add}",
    "editorGutter.modifiedBackground": "${git.changed}",
    "editorGutter.deletedBackground": "${git.removed}",
    "diffEditor.insertedLineBackground": "${diff.add}",
    "diffEditor.removedLineBackground": "${diff.delete}",
    "diffEditor.insertedTextBackground": "${diff.text}",
    "diffEditor.removedTextBackground": "${diff.text}",
    "editorWidget.background": "${bg0}",
    "editorSuggestWidget.background": "${sel0}",
    "editorSuggestWidget.selectedBackground": "${sel1}",
    "editorGroup.border": "${bg0}",
    "editorGroupHeader.tabsBackground": "${bg0}",
    "tab.activeBackground": "${bg1}",
    "tab.activeForeground": "${fg1}",
    "tab.inactiveBackground": "${bg0}",
    "tab.inactiveForeground": "${fg3}",
    "tab.border": "${bg0}",
    "sideBar.background": "${bg0}",
    "sideBar.foreground": "${fg2}",
    "activityBar.background": "${bg0}",
    "activityBar.foreground": "${fg1}",
    "statusBar.background": "${bg0}",
    "statusBar.foreground": "${fg2}",
    "titleBar.activeBackground": "${bg0}",
    "titleBar.activeForeground": "${fg2}",
    "panel.background": "${bg0}",
    "panel.border": "${bg3}",
    "list.activeSelectionBackground": "${sel1}",
    "list.hoverBackground": "${bg2}",
    "list.inactiveSelectionBackground": "${sel0}",
    "input.background": "${bg2}",
    "dropdown.background": "${bg2}",
    "button.background": "${palette.blue}",
    "button.foreground": "${bg1}",
    "badge.background": "${palette.blue}",
    "badge.foreground": "${bg1}",
    "terminal.background": "${bg1}",
    "terminal.foreground": "${fg1}",
    "terminal.ansiBlack": "${palette.black}",
    "terminal.ansiRed": "${palette.red}",
    "terminal.ansiGreen": "${palette.green}",
    "terminal.ansiYellow": "${palette.yellow}",
    "terminal.ansiBlue": "${palette.blue}",
    "terminal.ansiMagenta": "${palette.magenta}",
    "terminal.ansiCyan": "${palette.cyan}",
    "terminal.ansiWhite": "${palette.white}",
    "terminal.ansiBrightBlack": "${palette.black.bright}",
    "terminal.ansiBrightRed": "${palette.red.bright}",
    "terminal.ansiBrightGreen": "${palette.green.bright}",
    "terminal.ansiBrightYellow": "${palette.yellow.bright}",
    "terminal.ansiBrightBlue": "${palette.blue.bright}",
    "terminal.ansiBrightMagenta": "${palette.magenta.bright}",
    "terminal.ansiBrightCyan": "${palette.cyan.bright}",
    "terminal.ansiBrightWhite": "${palette.white.bright}"
  },
  "tokenColors": [
    {
      "settings": { "foreground": "${fg1}" }
    },
    {
      "name": "Comment",
      "scope": ["comment", "punctuation.definition.comment"],
      "settings": { "foreground": "${syntax.comment}" }
    },
    {
      "name": "Variable",
      "scope": ["variable", "variable.other.readwrite", "meta.definition.variable.name"],
      "settings": { "foreground": "${syntax.variable}" }
    },
    {
      "name": "Builtin variable (this, self)",
      "scope": ["variable.language", "support.variable"],
      "settings": { "foreground": "${syntax.builtin0}" }
    },
    {
      "name": "Parameter",
      "scope": ["variable.parameter", "meta.parameter variable"],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "Field / property",
      "scope": [
        "variable.other.property",
        "variable.other.object.property",
        "variable.other.member",
        "support.variable.property",
        "meta.object-literal.key",
        "entity.name.variable.field"
      ],
      "settings": { "foreground": "${syntax.field}" }
    },
    {
      "name": "Constant",
      "scope": ["constant", "variable.other.constant", "variable.other.enummember", "entity.name.constant"],
      "settings": { "foreground": "${syntax.const}" }
    },
    {
      "name": "Builtin constant (nil, null, undefined)",
      "scope": ["constant.language"],
      "settings": { "foreground": "${syntax.builtin2}" }
    },
    {
      "name": "Number / boolean",
      "scope": ["constant.numeric", "constant.language.boolean"],
      "settings": { "foreground": "${syntax.number}" }
    },
    {
      "name": "String",
      "scope": [
        "string",
        "punctuation.definition.string",
        "constant.character",
        "constant.other.placeholder",
        "markup.inline.raw.string"
      ],
      "settings": { "foreground": "${syntax.string}" }
    },
    {
      "name": "Regex",
      "scope": ["string.regexp"],
      "settings": { "foreground": "${syntax.regex}" }
    },
    {
      "name": "Escape sequence",
      "scope": ["constant.character.escape"],
      "settings": { "foreground": "${syntax.regex}", "fontStyle": "bold" }
    },
    {
      "name": "Function",
      "scope": [
        "entity.name.function",
        "support.function",
        "meta.function-call entity.name.function",
        "variable.function"
      ],
      "settings": { "foreground": "${syntax.func}" }
    },
    {
      "name": "Builtin function / macro",
      "scope": ["support.function.builtin", "entity.name.function.macro"],
      "settings": { "foreground": "${syntax.builtin0}" }
    },
    {
      "name": "Constructor",
      "scope": ["entity.name.function.constructor", "new.expr entity.name.type"],
      "settings": { "foreground": "${syntax.ident}" }
    },
    {
      "name": "Keyword",
      "scope": ["keyword", "keyword.control", "storage.type", "storage.modifier", "keyword.other"],
      "settings": { "foreground": "${syntax.keyword}" }
    },
    {
      "name": "Conditional / loop / label",
      "scope": [
        "keyword.control.conditional",
        "keyword.control.loop",
        "keyword.control.switch",
        "keyword.control.case",
        "keyword.control.default",
        "keyword.operator.ternary",
        "entity.name.label"
      ],
      "settings": { "foreground": "${syntax.conditional}" }
    },
    {
      "name": "Return / yield",
      "scope": ["keyword.control.flow", "keyword.control.return"],
      "settings": { "foreground": "${syntax.builtin0}" }
    },
    {
      "name": "Exception",
      "scope": ["keyword.control.trycatch", "keyword.control.exception"],
      "settings": { "foreground": "${syntax.keyword}" }
    },
    {
      "name": "Import / preprocessor",
      "scope": [
        "keyword.control.import",
        "keyword.control.export",
        "keyword.control.from",
        "keyword.control.directive",
        "meta.preprocessor",
        "entity.name.function.preprocessor",
        "punctuation.definition.directive"
      ],
      "settings": { "foreground": "${syntax.preproc}" }
    },
    {
      "name": "Operator",
      "scope": ["keyword.operator", "keyword.operator.expression", "keyword.operator.new", "keyword.operator.logical"],
      "settings": { "foreground": "${syntax.operator}" }
    },
    {
      "name": "Type",
      "scope": [
        "entity.name.type",
        "entity.name.class",
        "entity.name.struct",
        "entity.name.enum",
        "entity.name.interface",
        "entity.other.inherited-class",
        "support.class",
        "support.type"
      ],
      "settings": { "foreground": "${syntax.type}" }
    },
    {
      "name": "Builtin type",
      "scope": ["support.type.primitive", "support.type.builtin", "storage.type.primitive", "storage.type.built-in"],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "Module / namespace",
      "scope": ["entity.name.namespace", "entity.name.module", "entity.name.package"],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "Attribute / decorator",
      "scope": ["meta.decorator", "entity.name.function.decorator", "meta.attribute", "punctuation.decorator"],
      "settings": { "foreground": "${syntax.const}" }
    },
    {
      "name": "Punctuation",
      "scope": ["punctuation", "meta.brace", "punctuation.separator", "punctuation.terminator"],
      "settings": { "foreground": "${syntax.bracket}" }
    },
    {
      "name": "Special punctuation (interpolation)",
      "scope": [
        "punctuation.definition.template-expression",
        "punctuation.section.embedded",
        "punctuation.definition.interpolation"
      ],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "Tag",
      "scope": ["entity.name.tag"],
      "settings": { "foreground": "${syntax.keyword}" }
    },
    {
      "name": "Tag attribute",
      "scope": ["entity.other.attribute-name"],
      "settings": { "foreground": "${syntax.func}", "fontStyle": "italic" }
    },
    {
      "name": "Tag delimiter",
      "scope": ["punctuation.definition.tag"],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "JSON / YAML keys",
      "scope": ["support.type.property-name", "entity.name.tag.yaml"],
      "settings": { "foreground": "${syntax.func}" }
    },
    {
      "name": "Heading",
      "scope": ["markup.heading", "entity.name.section"],
      "settings": { "foreground": "${syntax.func}", "fontStyle": "bold" }
    },
    {
      "name": "Bold",
      "scope": ["markup.bold"],
      "settings": { "fontStyle": "bold" }
    },
    {
      "name": "Italic",
      "scope": ["markup.italic"],
      "settings": { "fontStyle": "italic" }
    },
    {
      "name": "Strikethrough",
      "scope": ["markup.strikethrough"],
      "settings": { "fontStyle": "strikethrough" }
    },
    {
      "name": "Link",
      "scope": ["markup.underline.link", "string.other.link"],
      "settings": { "foreground": "${syntax.const}", "fontStyle": "italic underline" }
    },
    {
      "name": "Inline code",
      "scope": ["markup.inline.raw", "markup.raw"],
      "settings": { "foreground": "${syntax.ident}", "fontStyle": "italic" }
    },
    {
      "name": "Quote",
      "scope": ["markup.quote"],
      "settings": { "foreground": "${fg2}" }
    },
    {
      "name": "List marker",
      "scope": ["punctuation.definition.list", "markup.list punctuation.definition"],
      "settings": { "foreground": "${syntax.builtin1}" }
    },
    {
      "name": "Diff inserted",
      "scope": ["markup.inserted", "meta.diff.header.to-file"],
      "settings": { "foreground": "${git.add}" }
    },
    {
      "name": "Diff deleted",
      "scope": ["markup.deleted", "meta.diff.header.from-file"],
      "settings": { "foreground": "${git.removed}" }
    },
    {
      "name": "Diff changed",
      "scope": ["markup.changed"],
      "settings": { "foreground": "${git.changed}" }
    },
    {
      "name": "Invalid",
      "scope": ["invalid", "invalid.illegal"],
      "settings": { "foreground": "${diag.error}" }
    },
    {
      "name": "Deprecated",
      "scope": ["invalid.deprecated"],
      "settings": { "foreground": "${syntax.dep}", "fontStyle": "strikethrough" }
    }
  ]
}
]]

  spec._type = spec.palette.meta.light and "light" or "dark"
  local result = template.parse_template_str(content, spec)
  spec._type = nil
  return result
end

return M
