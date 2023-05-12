local M = {}

function M.get(spec, config, opts)
  local c = spec.palette
  return {
    IndentBlanklineChar = { fg = spec.bg3 },
    IndentBlanklineContextChar = { fg = spec.syntax.variable },
    IndentBlanklineContextStart = { sp = spec.syntax.variable, style = "underline" },
    IndentBlanklineIndent6 = { blend = 0, fg = c.yellow.base },
    IndentBlanklineIndent5 = { blend = 0, fg = c.red.base },
    IndentBlanklineIndent4 = { blend = 0, fg = c.cyan.base },
    IndentBlanklineIndent3 = { blend = 0, fg = c.orange.base },
    IndentBlanklineIndent2 = { blend = 0, fg = c.blue.base },
    IndentBlanklineIndent1 = { blend = 0, fg = c.pink.base },
  }
end

return M
