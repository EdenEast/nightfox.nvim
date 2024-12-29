local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>name</key>
    <string>Catppuccin Macchiato</string>
    <key>semanticClass</key>
    <string>theme.dark.catppuccin-macchiato</string>
    <key>uuid</key>
    <string>02b2bdf3-9eb7-4396-bf04-f17f1468f99f</string>
    <key>author</key>
    <string>Catppuccin Org</string>
    <key>colorSpaceName</key>
    <string>sRGB</string>
    <key>settings</key>
    <array>
      <dict>
        <key>settings</key>
        <dict>
          <key>background</key>
          <string>${bg1}</string>
          <key>foreground</key>
          <string>${fg0}</string>
          <key>caret</key>
          <string>${fg3}</string>
          <key>lineHighlight</key>
          <string>${bg2}</string>
          <key>misspelling</key>
          <string>${palette.red}</string>
          <key>accent</key>
          <string>${palette.magenta}</string>
          <key>selection</key>
          <string>${fg0}</string>
          <key>gutterForeground</key>
          <string>${bg4}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Basic text &amp; variable names (incl. leading punctuation)</string>
        <key>scope</key>
        <string>text, source, variable.other.readwrite, punctuation.definition.variable</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Parentheses, Brackets, Braces</string>
        <key>scope</key>
        <string>punctuation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Comments</string>
        <key>scope</key>
        <string>comment, punctuation.definition.comment</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${bg4}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>string, punctuation.definition.string</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>constant.character.escape</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Booleans, constants, numbers</string>
        <key>scope</key>
        <string>constant.numeric, variable.other.constant, entity.name.constant, constant.language.boolean, constant.language.false, constant.language.true, keyword.other.unit.user-defined, keyword.other.unit.suffix.floating-point</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>keyword, keyword.operator.word, keyword.operator.new, variable.language.super, support.type.primitive, storage.type, storage.modifier, punctuation.definition.keyword</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>entity.name.tag.documentation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Punctuation</string>
        <key>scope</key>
        <string>keyword.operator, punctuation.accessor, punctuation.definition.generic, meta.function.closure punctuation.section.parameters, punctuation.definition.tag, punctuation.separator.key-value</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>entity.name.function, meta.function-call.method, support.function, support.function.misc, variable.function</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Classes</string>
        <key>scope</key>
        <string>entity.name.class, entity.other.inherited-class, support.class, meta.function-call.constructor, entity.name.struct</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Enum</string>
        <key>scope</key>
        <string>entity.name.enum</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Enum member</string>
        <key>scope</key>
        <string>meta.enum variable.other.readwrite, variable.other.enummember</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Object properties</string>
        <key>scope</key>
        <string>meta.property.object</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Types</string>
        <key>scope</key>
        <string>meta.type, meta.type-alias, support.type, entity.name.type</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Decorators</string>
        <key>scope</key>
        <string>meta.annotation variable.function, meta.annotation variable.annotation.function, meta.annotation punctuation.definition.annotation, meta.decorator, punctuation.decorator</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>variable.parameter, meta.function.parameters</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Built-ins</string>
        <key>scope</key>
        <string>constant.language, support.function.builtin</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>entity.other.attribute-name.documentation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Preprocessor directives</string>
        <key>scope</key>
        <string>keyword.control.directive, punctuation.definition.directive</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Type parameters</string>
        <key>scope</key>
        <string>punctuation.definition.typeparameters</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Namespaces</string>
        <key>scope</key>
        <string>entity.name.namespace</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Property names (left hand assignments in json/yaml/css)</string>
        <key>scope</key>
        <string>support.type.property-name.css</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>This/Self keyword</string>
        <key>scope</key>
        <string>variable.language.this, variable.language.this punctuation.definition.variable</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Object properties</string>
        <key>scope</key>
        <string>variable.object.property</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>String template interpolation</string>
        <key>scope</key>
        <string>string.template variable, string variable</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>`new` as bold</string>
        <key>scope</key>
        <string>keyword.operator.new</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string>bold</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C++ extern keyword</string>
        <key>scope</key>
        <string>storage.modifier.specifier.extern.cpp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C++ scope resolution</string>
        <key>scope</key>
        <string>entity.name.scope-resolution.template.call.cpp, entity.name.scope-resolution.parameter.cpp, entity.name.scope-resolution.cpp, entity.name.scope-resolution.function.definition.cpp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C++ doc keywords</string>
        <key>scope</key>
        <string>storage.type.class.doxygen</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C++ operators</string>
        <key>scope</key>
        <string>storage.modifier.reference.cpp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C# Interpolated Strings</string>
        <key>scope</key>
        <string>meta.interpolation.cs</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>C# xml-style docs</string>
        <key>scope</key>
        <string>comment.block.documentation.cs</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Classes, reflecting the className color in JSX</string>
        <key>scope</key>
        <string>source.css entity.other.attribute-name.class.css, entity.other.attribute-name.parent-selector.css punctuation.definition.entity.css</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Operators</string>
        <key>scope</key>
        <string>punctuation.separator.operator.css</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Pseudo classes</string>
        <key>scope</key>
        <string>source.css entity.other.attribute-name.pseudo-class</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>source.css constant.other.unicode-range</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>source.css variable.parameter.url</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>CSS vendored property names</string>
        <key>scope</key>
        <string>support.type.vendored.property-name</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Less/SCSS right-hand variables (@/$-prefixed)</string>
        <key>scope</key>
        <string>source.css meta.property-value variable, source.css meta.property-value variable.other.less, source.css meta.property-value variable.other.less punctuation.definition.variable.less, meta.definition.variable.scss</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>CSS variables (--prefixed)</string>
        <key>scope</key>
        <string>source.css meta.property-list variable, meta.property-list variable.other.less, meta.property-list variable.other.less punctuation.definition.variable.less</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>CSS Percentage values, styled the same as numbers</string>
        <key>scope</key>
        <string>keyword.other.unit.percentage.css</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>CSS Attribute selectors, styled the same as strings</string>
        <key>scope</key>
        <string>source.css meta.attribute-selector</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON/YAML keys, other left-hand assignments</string>
        <key>scope</key>
        <string>keyword.other.definition.ini, punctuation.support.type.property-name.json, support.type.property-name.json, punctuation.support.type.property-name.toml, support.type.property-name.toml, entity.name.tag.yaml, punctuation.support.type.property-name.yaml, support.type.property-name.yaml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON/YAML constants</string>
        <key>scope</key>
        <string>constant.language.json, constant.language.yaml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>YAML anchors</string>
        <key>scope</key>
        <string>entity.name.type.anchor.yaml, variable.other.alias.yaml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>TOML tables / ini groups</string>
        <key>scope</key>
        <string>support.type.property-name.table, entity.name.section.group-title.ini</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>TOML dates</string>
        <key>scope</key>
        <string>constant.other.time.datetime.offset.toml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>YAML anchor puctuation</string>
        <key>scope</key>
        <string>punctuation.definition.anchor.yaml, punctuation.definition.alias.yaml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>YAML triple dashes</string>
        <key>scope</key>
        <string>entity.other.document.begin.yaml</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markup Diff</string>
        <key>scope</key>
        <string>markup.changed.diff</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Diff</string>
        <key>scope</key>
        <string>meta.diff.header.from-file, meta.diff.header.to-file, punctuation.definition.from-file.diff, punctuation.definition.to-file.diff</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Diff Inserted</string>
        <key>scope</key>
        <string>markup.inserted.diff</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Diff Deleted</string>
        <key>scope</key>
        <string>markup.deleted.diff</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>dotenv left-hand side assignments</string>
        <key>scope</key>
        <string>variable.other.env</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>dotenv reference to existing env variable</string>
        <key>scope</key>
        <string>string.quoted variable.other.env</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GDScript functions</string>
        <key>scope</key>
        <string>support.function.builtin.gdscript</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GDScript constants</string>
        <key>scope</key>
        <string>constant.language.gdscript</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Comment keywords</string>
        <key>scope</key>
        <string>comment meta.annotation.go</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>go:embed, go:build, etc.</string>
        <key>scope</key>
        <string>comment meta.annotation.parameters.go</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Go constants (nil, true, false)</string>
        <key>scope</key>
        <string>constant.language.go</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GraphQL variables</string>
        <key>scope</key>
        <string>variable.graphql</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GraphQL aliases</string>
        <key>scope</key>
        <string>string.unquoted.alias.graphql</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#f0c6c6</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GraphQL enum members</string>
        <key>scope</key>
        <string>constant.character.enum.graphql</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>GraphQL field in types</string>
        <key>scope</key>
        <string>meta.objectvalues.graphql constant.object.key.graphql string.unquoted.graphql</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#f0c6c6</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>HTML/XML DOCTYPE as keyword</string>
        <key>scope</key>
        <string>keyword.other.doctype, meta.tag.sgml.doctype punctuation.definition.tag, meta.tag.metadata.doctype entity.name.tag, meta.tag.metadata.doctype punctuation.definition.tag</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>HTML/XML-like &lt;tags/&gt;</string>
        <key>scope</key>
        <string>entity.name.tag</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Special characters like &amp;amp;</string>
        <key>scope</key>
        <string>text.html constant.character.entity, text.html constant.character.entity punctuation, constant.character.entity.xml, constant.character.entity.xml punctuation, constant.character.entity.js.jsx, constant.charactger.entity.js.jsx punctuation, constant.character.entity.tsx, constant.character.entity.tsx punctuation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>HTML/XML tag attribute values</string>
        <key>scope</key>
        <string>entity.other.attribute-name</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Components</string>
        <key>scope</key>
        <string>support.class.component, support.class.component.jsx, support.class.component.tsx, support.class.component.vue</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Annotations</string>
        <key>scope</key>
        <string>punctuation.definition.annotation, storage.type.annotation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Java enums</string>
        <key>scope</key>
        <string>constant.other.enum.java</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Java imports</string>
        <key>scope</key>
        <string>storage.modifier.import.java</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Javadoc</string>
        <key>scope</key>
        <string>comment.block.javadoc.java keyword.other.documentation.javadoc.java</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Exported Variable</string>
        <key>scope</key>
        <string>meta.export variable.other.readwrite.js</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JS/TS constants &amp; properties</string>
        <key>scope</key>
        <string>variable.other.constant.js, variable.other.constant.ts, variable.other.property.js, variable.other.property.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSDoc; these are mainly params, so styled as such</string>
        <key>scope</key>
        <string>variable.other.jsdoc, comment.block.documentation variable.other</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSDoc keywords</string>
        <key>scope</key>
        <string>storage.type.class.jsdoc</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>support.type.object.console.js</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Node constants as keywords (module, etc.)</string>
        <key>scope</key>
        <string>support.constant.node, support.type.object.module.js</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>implements as keyword</string>
        <key>scope</key>
        <string>storage.modifier.implements</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Builtin types</string>
        <key>scope</key>
        <string>constant.language.null.js, constant.language.null.ts, constant.language.undefined.js, constant.language.undefined.ts, support.type.builtin.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>variable.parameter.generic</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Arrow functions</string>
        <key>scope</key>
        <string>keyword.declaration.function.arrow.js, storage.type.function.arrow.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Decorator punctuations (decorators inherit from blue functions, instead of styleguide peach)</string>
        <key>scope</key>
        <string>punctuation.decorator.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Extra JS/TS keywords</string>
        <key>scope</key>
        <string>keyword.operator.expression.in.js, keyword.operator.expression.in.ts, keyword.operator.expression.infer.ts, keyword.operator.expression.instanceof.js, keyword.operator.expression.instanceof.ts, keyword.operator.expression.is, keyword.operator.expression.keyof.ts, keyword.operator.expression.of.js, keyword.operator.expression.of.ts, keyword.operator.expression.typeof.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Julia macros</string>
        <key>scope</key>
        <string>support.function.macro.julia</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Julia language constants (true, false)</string>
        <key>scope</key>
        <string>constant.language.julia</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Julia other constants (these seem to be arguments inside arrays)</string>
        <key>scope</key>
        <string>constant.other.symbol.julia</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>LaTeX preamble</string>
        <key>scope</key>
        <string>text.tex keyword.control.preamble</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>LaTeX be functions</string>
        <key>scope</key>
        <string>text.tex support.function.be</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>LaTeX math</string>
        <key>scope</key>
        <string>constant.other.general.math.tex</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#f0c6c6</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Lua docstring keywords</string>
        <key>scope</key>
        <string>comment.line.double-dash.documentation.lua storage.type.annotation.lua</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Lua docstring variables</string>
        <key>scope</key>
        <string>comment.line.double-dash.documentation.lua entity.name.variable.lua, comment.line.double-dash.documentation.lua variable.lua</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.1.markdown punctuation.definition.heading.markdown, heading.1.markdown, markup.heading.atx.1.mdx, markup.heading.atx.1.mdx punctuation.definition.heading.mdx, markup.heading.setext.1.markdown, markup.heading.heading-0.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.2.markdown punctuation.definition.heading.markdown, heading.2.markdown, markup.heading.atx.2.mdx, markup.heading.atx.2.mdx punctuation.definition.heading.mdx, markup.heading.setext.2.markdown, markup.heading.heading-1.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.3.markdown punctuation.definition.heading.markdown, heading.3.markdown, markup.heading.atx.3.mdx, markup.heading.atx.3.mdx punctuation.definition.heading.mdx, markup.heading.heading-2.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.4.markdown punctuation.definition.heading.markdown, heading.4.markdown, markup.heading.atx.4.mdx, markup.heading.atx.4.mdx punctuation.definition.heading.mdx, markup.heading.heading-3.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.5.markdown punctuation.definition.heading.markdown, heading.5.markdown, markup.heading.atx.5.mdx, markup.heading.atx.5.mdx punctuation.definition.heading.mdx, markup.heading.heading-4.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>heading.6.markdown punctuation.definition.heading.markdown, heading.6.markdown, markup.heading.atx.6.mdx, markup.heading.atx.6.mdx punctuation.definition.heading.mdx, markup.heading.heading-5.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.bold</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
          <key>fontStyle</key>
          <string>bold</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.italic</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.strikethrough</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#a5adcb</string>
          <key>fontStyle</key>
          <string>strikethrough</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown auto links</string>
        <key>scope</key>
        <string>punctuation.definition.link, markup.underline.link</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown links</string>
        <key>scope</key>
        <string>text.html.markdown punctuation.definition.link.title, string.other.link.title.markdown, markup.link, punctuation.definition.constant.markdown, constant.other.reference.link.markdown, markup.substitution.attribute-reference</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#b7bdf8</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown code spans</string>
        <key>scope</key>
        <string>punctuation.definition.raw.markdown, markup.inline.raw.string.markdown, markup.raw.block.markdown</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown triple backtick language identifier</string>
        <key>scope</key>
        <string>fenced_code.block.language</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown triple backticks</string>
        <key>scope</key>
        <string>markup.fenced_code.block punctuation.definition, markup.raw support.asciidoc</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown quotes</string>
        <key>scope</key>
        <string>markup.quote, punctuation.definition.quote.begin</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown separators</string>
        <key>scope</key>
        <string>meta.separator.markdown</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markdown list bullets</string>
        <key>scope</key>
        <string>punctuation.definition.list.begin.markdown, markup.list.bullet</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Nix attribute names</string>
        <key>scope</key>
        <string>entity.other.attribute-name.multipart.nix, entity.other.attribute-name.single.nix</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Nix parameter names</string>
        <key>scope</key>
        <string>variable.parameter.name.nix</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Nix interpolated parameter names</string>
        <key>scope</key>
        <string>meta.embedded variable.parameter.name.nix</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#b7bdf8</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Nix paths</string>
        <key>scope</key>
        <string>string.unquoted.path.nix</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>PHP Attributes</string>
        <key>scope</key>
        <string>support.attribute.builtin, meta.attribute.php</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>PHP Parameters (needed for the leading dollar sign)</string>
        <key>scope</key>
        <string>meta.function.parameters.php punctuation.definition.variable.php</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>PHP Constants (null, __FILE__, etc.)</string>
        <key>scope</key>
        <string>constant.language.php</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>PHP functions</string>
        <key>scope</key>
        <string>text.html.php support.function</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>PHPdoc keywords</string>
        <key>scope</key>
        <string>keyword.other.phpdoc.php</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python argument functions reset to text, otherwise they inherit blue from function-call</string>
        <key>scope</key>
        <string>support.variable.magic.python, meta.function-call.arguments.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python double underscore functions</string>
        <key>scope</key>
        <string>support.function.magic.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python `self` keyword</string>
        <key>scope</key>
        <string>variable.parameter.function.language.special.self.python, variable.language.special.self.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python keyword flow/logical (for ... in)</string>
        <key>scope</key>
        <string>keyword.control.flow.python, keyword.operator.logical.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python storage type</string>
        <key>scope</key>
        <string>storage.type.function.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python function support</string>
        <key>scope</key>
        <string>support.token.decorator.python, meta.function.decorator.identifier.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python function calls</string>
        <key>scope</key>
        <string>meta.function-call.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python function decorators</string>
        <key>scope</key>
        <string>entity.name.function.decorator.python, punctuation.definition.decorator.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python placeholder reset to normal string</string>
        <key>scope</key>
        <string>constant.character.format.placeholder.other.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python exception &amp; builtins such as exit()</string>
        <key>scope</key>
        <string>support.type.exception.python, support.function.builtin.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>entity.name.type</string>
        <key>scope</key>
        <string>support.type.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>python constants (True/False)</string>
        <key>scope</key>
        <string>constant.language.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Arguments accessed later in the function body</string>
        <key>scope</key>
        <string>meta.indexed-name.python, meta.item-access.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python f-strings/binary/unicode storage types</string>
        <key>scope</key>
        <string>storage.type.string.python</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Python type hints</string>
        <key>scope</key>
        <string>meta.function.parameters.python</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex string begin/end in JS/TS</string>
        <key>scope</key>
        <string>string.regexp punctuation.definition.string.begin, string.regexp punctuation.definition.string.end</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex anchors (^, $)</string>
        <key>scope</key>
        <string>keyword.control.anchor.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex regular string match</string>
        <key>scope</key>
        <string>string.regexp.ts</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex group parenthesis &amp; backreference (\1, \2, \3, ...)</string>
        <key>scope</key>
        <string>punctuation.definition.group.regexp, keyword.other.back-reference.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.green}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex character class []</string>
        <key>scope</key>
        <string>punctuation.definition.character-class.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex character classes (\d, \w, \s)</string>
        <key>scope</key>
        <string>constant.other.character-class.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex range</string>
        <key>scope</key>
        <string>constant.other.character-class.range.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg3}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex quantifier</string>
        <key>scope</key>
        <string>keyword.operator.quantifier.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex constant/numeric</string>
        <key>scope</key>
        <string>constant.character.numeric.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regex lookaheads, negative lookaheads, lookbehinds, negative lookbehinds</string>
        <key>scope</key>
        <string>punctuation.definition.group.no-capture.regexp, meta.assertion.look-ahead.regexp, meta.assertion.negative-look-ahead.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust attribute</string>
        <key>scope</key>
        <string>meta.annotation.rust, meta.annotation.rust punctuation, meta.attribute.rust, punctuation.definition.attribute.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust attribute strings</string>
        <key>scope</key>
        <string>meta.attribute.rust string.quoted.double.rust, meta.attribute.rust string.quoted.single.char.rust</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust keyword</string>
        <key>scope</key>
        <string>entity.name.function.macro.rules.rust, storage.type.module.rust, storage.modifier.rust, storage.type.struct.rust, storage.type.enum.rust, storage.type.trait.rust, storage.type.union.rust, storage.type.impl.rust, storage.type.rust, storage.type.function.rust, storage.type.type.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust u/i32, u/i64, etc.</string>
        <key>scope</key>
        <string>entity.name.type.numeric.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
          <key>fontStyle</key>
          <string/>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust generic</string>
        <key>scope</key>
        <string>meta.generic.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust impl</string>
        <key>scope</key>
        <string>entity.name.impl.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust module</string>
        <key>scope</key>
        <string>entity.name.module.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust trait</string>
        <key>scope</key>
        <string>entity.name.trait.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust struct</string>
        <key>scope</key>
        <string>storage.type.source.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust union</string>
        <key>scope</key>
        <string>entity.name.union.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust enum member</string>
        <key>scope</key>
        <string>meta.enum.rust storage.type.source.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust macro</string>
        <key>scope</key>
        <string>support.macro.rust, meta.macro.rust support.function.rust, entity.name.function.macro.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust lifetime</string>
        <key>scope</key>
        <string>storage.modifier.lifetime.rust, entity.name.type.lifetime</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust string formatting</string>
        <key>scope</key>
        <string>string.quoted.double.rust constant.other.placeholder.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust return type generic</string>
        <key>scope</key>
        <string>meta.function.return-type.rust meta.generic.rust storage.type.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust functions</string>
        <key>scope</key>
        <string>meta.function.call.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust angle brackets</string>
        <key>scope</key>
        <string>punctuation.brackets.angle.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan.bright}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust constants</string>
        <key>scope</key>
        <string>constant.other.caps.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust function parameters</string>
        <key>scope</key>
        <string>meta.function.definition.rust variable.other.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.pink.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust closure variables</string>
        <key>scope</key>
        <string>meta.function.call.rust variable.other.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust self</string>
        <key>scope</key>
        <string>variable.language.self.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Rust metavariable names</string>
        <key>scope</key>
        <string>variable.other.metavariable.name.rust, meta.macro.metavariable.rust keyword.operator.macro.dollar.rust</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell shebang</string>
        <key>scope</key>
        <string>comment.line.shebang, comment.line.shebang punctuation.definition.comment, comment.line.shebang, punctuation.definition.comment.shebang.shell, meta.shebang.shell</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell shebang command</string>
        <key>scope</key>
        <string>comment.line.shebang constant.language</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell interpolated command</string>
        <key>scope</key>
        <string>meta.function-call.arguments.shell punctuation.definition.variable.shell, meta.function-call.arguments.shell punctuation.section.interpolation, meta.function-call.arguments.shell punctuation.definition.variable.shell, meta.function-call.arguments.shell punctuation.section.interpolation</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell interpolated command variable</string>
        <key>scope</key>
        <string>meta.string meta.interpolation.parameter.shell variable.other.readwrite</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
          <key>fontStyle</key>
          <string>italic</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>source.shell punctuation.section.interpolation, punctuation.definition.evaluation.backticks.shell</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.cyan}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell EOF</string>
        <key>scope</key>
        <string>entity.name.tag.heredoc.shell</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Shell quoted variable</string>
        <key>scope</key>
        <string>string.quoted.double.shell variable.other.normal.shell</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg0}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.synopsis.man, markup.heading.title.man, markup.heading.other.man, markup.heading.env.man</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.magenta}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.commands.man</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.blue.dim}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.env.man</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${fg2}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.1.markdown</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.red}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.2.markdown</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>markup.heading.markdown</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${palette.yellow}</string>
        </dict>
      </dict>
    </array>
  </dict>
</plist>
]]

  return template.parse_template_str(content, spec)
end

return M
