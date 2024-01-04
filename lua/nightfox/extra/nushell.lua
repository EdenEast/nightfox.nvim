local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local P = spec.palette
  spec.harsh = P.meta.light and P.black or P.white

  local content = [[
let ${palette.meta.name}_theme = {
   binary: "${syntax.number}"
   block: "${syntax.bracket}"
   bool: "${syntax.const}"
   cellpath: "${harsh}"
   date: "${syntax.string}"
   duration: "${syntax.string}"
   filesize: "${syntax.number}"
   float: "${syntax.number}"
   int: "${syntax.number}"
   list: "${syntax.bracket}"
   nothing: "${harsh}"
   range: "${harsh}"
   record: "${harsh}"
   string: "${syntax.string}"

   leading_trailing_space_bg: "${bg3}"
   header: "${fg2}"
   empty: "${palette.blue}"
   row_index: "${fg3}"
   hints: "${fg3}"
   separator: "${syntax.comment}"

   shape_block: "${syntax.bracket}"
   shape_bool: "${syntax.const}"
   shape_external: "${syntax.statement}"
   shape_externalarg: "${syntax.variable}"
   shape_filepath: "${syntax.variable}"
   shape_flag: "${syntax.ident}"
   shape_float: "${syntax.number}"
   shape_globpattern: "${syntax.regex}"
   shape_int: "${syntax.number}"
   shape_internalcall: "${syntax.statement}"
   shape_list: "${syntax.bracket}"
   shape_literal: "${syntax.string}"
   shape_nothing: "${syntax.builtin1}"
   shape_operator: "${syntax.operator}"
   shape_record: "${syntax.bracket}"
   shape_string: "${syntax.string}"
   shape_string_interpolation: "${syntax.regex}"
   shape_table: "${syntax.bracket}"
   shape_variable: "${syntax.variable}"
}
]]

  return template.parse_template_str(content, spec)
end

return M
