local config = require("nightfox.config")
local util = require("nightfox.util")
local fmt = string.format

local M = {}

local function should_link(link)
  return link and link ~= ""
end

function M.compile(opts)
  opts = opts or {}
  local style = opts.style or config.fox
  local spec = require("nightfox.spec").load(style)
  local groups = require("nightfox.group").from(spec)
  local background = spec.palette.meta.light and "light" or "dark"

  local lines = {
    fmt(
      [=[
return string.dump(function()
vim.command([[
if exists("colors_name")
  hi clear
endif
set termguicolors
let g:colors_name = "%s"
set background=%s]=],
      style,
      background
    ),
  }

  if config.options.terminal_colors then
    local terminal = require("nightfox.group.terminal").get(spec)
    for k, v in pairs(terminal) do
      table.insert(lines, fmt("let g:%s = '%s'", k, v))
    end
  end

  for name, values in pairs(groups) do
    if should_link(values.link) then
      table.insert(lines, fmt([[highlight! link %s %s]], name, values.link))
    else
      table.insert(
        lines,
        fmt(
          [[highlight %s guifg=%s guibg=%s gui=%s guisp=%s]],
          name,
          values.fg or "NONE",
          values.bg or "NONE",
          values.style or "NONE",
          values.sp or "NONE"
        )
      )
    end
  end

  table.insert(lines, "]])end)")

  opts.name = style
  local output_path, output_file = config.get_compiled_info(opts)
  util.ensure_dir(output_path)

  local file
  if vim.g.nightfox_debug then
    file = io.open(output_file .. ".lua", "wb")
    file:write(table.concat(lines, "\n"))
    file:close()
  end

  file = io.open(output_file, "wb")

  local ld = loadstring or load -- loadstring == 5.1, load >= 5.2
  local f = ld(table.concat(lines, "\n"), "=")
  if not f then
    local tmpfile = util.join_paths(util.get_tmp_dir(), "nightfox_error.lua")
    require("nightfox.lib.log").error(fmt(
      [[There is an error in your nigtfox config.
You can open '%s' for debugging.

If you think this is a bug, kindly open an issue and attach '%s' file.
Bellow is the error message:
]],
      tmpfile,
      tmpfile
    ))
    local efile = io.open(tmpfile, "wb")
    efile:write(table.concat(lines, "\n"))
    efile:close()
    dofile(tmpfile)
  end

  file:write(f())
  file:close()
end

return M
