local config = require("nightfox.config")
local util = require("nightfox.util")
local parse_styles = require("nightfox.lib.highlight").parse_style

local is_nvim = util.is_nvim
local cmd = is_nvim and "vim.cmd" or "vim.command"
local fmt = string.format

local function inspect(t)
  local list = {}
  for k, v in pairs(t) do
    local q = type(v) == "string" and [["]] or ""
    table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
  end

  table.sort(list)
  return fmt([[{ %s }]], table.concat(list, ", "))
end

local function should_link(link)
  return link and link ~= ""
end

local function nvim_highlight(name, values)
  if should_link(values.link) then
    return fmt([[vim.api.nvim_set_hl(0, "%s", { link = "%s" })]], name, values.link)
  end

  local opts = parse_styles(values.style)
  opts.bg = values.bg
  opts.fg = values.fg
  opts.sg = values.sg
  return fmt([[vim.api.nvim_set_hl(0, "%s", %s)]], name, inspect(opts))
end

local function vim_highlight(name, values)
  if should_link(values.link) then
    return fmt([[%s("highlight! link %s %s")]], cmd, name, values.link)
  end
  return fmt(
    [[%s("highlight %s guifg=%s guibg=%s gui=%s guisp=%s")]],
    cmd,
    name,
    values.fg or "NONE",
    values.bg or "NONE",
    values.style or "NONE",
    values.sp or "NONE"
  )
end

local highlight = is_nvim and nvim_highlight or vim_highlight

local M = {}

function M.compile(opts)
  opts = opts or {}
  local style = opts.style or config.fox
  local spec = require("nightfox.spec").load(style)
  local groups = require("nightfox.group").from(spec)

  local lines = { [[require("nightfox").compiled = string.dump(function()]] }
  table.insert(lines, fmt([[if vim.g.colors_name then %s("hi clear") end]], cmd))
  table.insert(lines, fmt([[vim.g.colors_name = "%s"]], style))

  local background = spec.palette.meta.light and "light" or "dark"
  local bg_fmt_str = is_nvim and [[vim.o.background = "%s"]] or [[vim.command("set background=%s")]]
  table.insert(lines, fmt(bg_fmt_str, background))
  table.insert(lines, is_nvim and [[vim.o.termguicolors = true]] or [[vim.command("set termguicolors")]])

  if config.options.terminal_colors then
    local terminal = require("nightfox.group.terminal").get(spec)
    for k, v in pairs(terminal) do
      table.insert(lines, fmt([[vim.g.%s = "%s"]], k, v))
    end
  end

  for group, values in pairs(groups) do
    table.insert(lines, highlight(group, values))
  end

  table.insert(lines, "end)")

  opts.name = style
  local output_path, output_file = config.get_compiled_info(opts)

  util.ensure_dir(output_path)

  local file = io.open(output_file, "wb")
  loadstring(table.concat(lines, "\n"), "=")()
  file:write(require("nightfox").compiled)
  file:close()
end

return M
