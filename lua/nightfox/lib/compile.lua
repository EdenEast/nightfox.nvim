local config = require("nightfox.config").options

local fmt = string.format

local header = [[
local M = {}
]]

local footer = [[
return M
]]

local nvim_highlight_func = [[
local function highlight(groups)
  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, {
      background = opts.bg,
      foreground = opts.fg,
      bold = opts.bold,
      italic = opts.italic,
      underline = opts.underline,
      undercurl = opts.undercurl,
    })
  end
end
]]

local nvim_link_func = [[
local function link(groups)
  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, { link = opts.link })
  end
end
]]

local vim_highlight_func = [[
local function highlight(list)
  local cmds = {}
  for group, opts in pairs(list) do
    table.insert(cmds, string.format(
      "highlight %s guifg=%s guibg=%s gui=%s guisp=%s",
      group,
      opts.fg or "NONE",
      opts.bg or "NONE",
      opts.style or "NONE",
      opts.sp or "NONE"
    ))
  end
  vim.cmd(table.concat(cmds, "\n"))
end
]]

local vim_link_func = [[
local function link(list)
  local cmds = {}
  for group, opts in pairs(list) do
    table.insert(cmds, string.format("highlight! link %s %s", group, opts.link))
  end
  vim.cmd(table.concat(cmds, "\n"))
end
]]

local clear_func = [[
local function clear()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
end
]]

local set_info_func = [[
local function set_info()
  vim.cmd("set background=%s")
  vim.cmd("set termguicolors")
  vim.g.colors_name = "%s"
end
]]

-- local use_nvim_api = vim.fn.has("nvim-0.7") and vim.api.nvim_set_hl
local use_nvim_api = false

local function parse_style(style)
  if not style then
    return {}
  end

  local result = {}
  for token in string.gmatch(style, "([^,]+)") do
    result[token] = true
  end

  return result
end

local function create_load_func()
  local lines = {}

  table.insert(lines, "function M.load()")
  table.insert(lines, "  clear()")
  table.insert(lines, "  highlight(groups)")
  table.insert(lines, "  link(links)")
  table.insert(lines, "  set_info()")
  if config.terminal_colors then
    table.insert(lines, "  set_terminal()")
  end
  table.insert(lines, "end")

  return table.concat(lines, '\n')
end

local function create_terminal(spec)
  local c = spec.pallet

  local lines = { "local function set_terminal()" }
  table.insert(lines, fmt([[  vim.g.terminal_color_0 = "%s"]], c.black.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_1 = "%s"]], c.red.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_2 = "%s"]], c.green.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_3 = "%s"]], c.yellow.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_4 = "%s"]], c.blue.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_5 = "%s"]], c.magenta.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_6 = "%s"]], c.cyan.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_7 = "%s"]], c.white.base))
  table.insert(lines, fmt([[  vim.g.terminal_color_8 = "%s"]], c.black.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_9 = "%s"]], c.red.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_10 = "%s"]], c.green.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_11 = "%s"]], c.yellow.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_12 = "%s"]], c.blue.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_13 = "%s"]], c.magenta.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_14 = "%s"]], c.cyan.bright))
  table.insert(lines, fmt([[  vim.g.terminal_color_15 = "%s"]], c.white.bright))

  local colors = {
    fmt([["%s"]], c.black.base),
    fmt([["%s"]], c.red.base),
    fmt([["%s"]], c.green.base),
    fmt([["%s"]], c.yellow.base),
    fmt([["%s"]], c.blue.base),
    fmt([["%s"]], c.magenta.base),
    fmt([["%s"]], c.cyan.base),
    fmt([["%s"]], c.white.base),
    fmt([["%s"]], c.black.bright),
    fmt([["%s"]], c.red.bright),
    fmt([["%s"]], c.green.bright),
    fmt([["%s"]], c.yellow.bright),
    fmt([["%s"]], c.blue.bright),
    fmt([["%s"]], c.magenta.bright),
    fmt([["%s"]], c.cyan.bright),
    fmt([["%s"]], c.white.bright),
  }

  table.insert(lines, [[  if vim.fn.has("nvim") == 0 then]])
  table.insert(lines, fmt([[    local colors = { %s }]], table.concat(colors, ", ")))
  table.insert(lines, fmt([[    vim.g.terminal_ansi_colors = vim.list(colors)]], table.concat(colors, ", ")))
  table.insert(lines, [[  end]])
  table.insert(lines, "end")

  return table.concat(lines, "\n")
end


local specs = require("nightfox.spec").load()

for specname, spec in pairs(specs) do
  local groups = require("nightfox.group").load(spec)

  local lines = { header }


  local links = {}
  local hls = {}

  for name, opts in pairs(groups) do
    if opts.link and opts.link ~= "" then
      table.insert(links, fmt([[%s = "%s",]], name, opts.link))
    else
      local rhs = {}
      for k, v in pairs(opts) do
        if k == "style" and use_nvim_api then
          if v ~= "NONE" then
            for style_name, style_value in pairs(parse_style(v)) do
              table.insert(rhs, fmt([[%s = %s]], style_name, style_value))
            end
          end
        else
          table.insert(rhs, fmt([[%s = "%s"]], k, v))
        end
      end
      table.insert(hls, fmt([[%s = { %s },]], name, table.concat(rhs, ", ")))
    end
  end

  -- write groups
  table.insert(lines, [[local groups = {]])
  table.insert(lines, table.concat(hls, "\n"))
  table.insert(lines, [[}]])
  table.insert(lines, [[]])

  -- write write lines
  table.insert(lines, [[local links = {]])
  table.insert(lines, table.concat(links, "\n"))
  table.insert(lines, [[}]])
  table.insert(lines, [[]])

  -- write funcs
  table.insert(lines, use_nvim_api and nvim_highlight_func or vim_highlight_func)
  table.insert(lines, use_nvim_api and nvim_link_func or vim_link_func)

  if config.terminal_colors then
    table.insert(lines, create_terminal(spec))
  end
  local background_type = spec.pallet.meta.light and "light" or "dark"
  table.insert(lines, fmt(set_info_func, background_type, spec.pallet.meta.name))
  table.insert(lines, clear_func)
  table.insert(lines, create_load_func())
  table.insert(lines, "M.load()")
  table.insert(lines, footer)

  local file = io.open(specname .. ".lua", "w")
  file:write(table.concat(lines, "\n"))
  file:close()
end
