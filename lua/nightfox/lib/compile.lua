local config = require("nightfox.config").options

local fmt = string.format

local header = [[
local M = {}
]]

local footer = [[
return M
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
    table.insert(cmds, string.format("highlight! link %s %s", group, opts))
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
local function set_info(name)
  vim.cmd("set background=" .. metas[name])
  vim.cmd("set termguicolors")
  vim.g.colors_name = name
end
]]

local function gen_main_func()
  local lines = {}

  table.insert(lines, "function M.load(name)")
  table.insert(lines, "  clear()")
  table.insert(lines, "  highlight(highlights[name])")
  table.insert(lines, "  link(links[name])")
  table.insert(lines, "  set_info(name)")

  if config.terminal_colors then
    table.insert(lines, "  set_terminal(name)")
  end

  table.insert(lines, "end")
  table.insert(lines, "")

  return table.concat(lines, "\n")
end

local function gen_terminal_func(specs, order)
  local lines = {}

  table.insert(lines, "local function set_terminal(name)")
  table.insert(lines, "  local colors = {")
  for _, name in ipairs(order) do
    local spec = specs[name]
    local c = spec.pallet
    -- stylua: ignore
    local colors = {
      fmt([["%s"]], c.black.base),   fmt([["%s"]], c.red.base),
      fmt([["%s"]], c.green.base),   fmt([["%s"]], c.yellow.base),
      fmt([["%s"]], c.blue.base),    fmt([["%s"]], c.magenta.base),
      fmt([["%s"]], c.cyan.base),    fmt([["%s"]], c.white.base),
      fmt([["%s"]], c.black.bright), fmt([["%s"]], c.red.bright),
      fmt([["%s"]], c.green.bright), fmt([["%s"]], c.yellow.bright),
      fmt([["%s"]], c.blue.bright),  fmt([["%s"]], c.magenta.bright),
      fmt([["%s"]], c.cyan.bright),  fmt([["%s"]], c.white.bright),
    }
    table.insert(lines, fmt("    %s = { %s },", name, table.concat(colors, ", ")))
  end
  table.insert(lines, "  }")

  table.insert(lines, [[  for i, c in ipairs(colors[name]) do]])
  table.insert(lines, [[    local n = "terminal_color_" .. i - 1]])
  table.insert(lines, [[    vim.g[n] = c]])
  table.insert(lines, [[  end]])
  table.insert(lines, [[  if vim.fn.has("nvim") == 0 then]])
  table.insert(lines, [[    vim.g.terminal_ansi_colors = vim.list(colors)]])
  table.insert(lines, [[  end]])
  table.insert(lines, "end")
  table.insert(lines, "")

  return table.concat(lines, "\n")
end

local M = {}

function M.compile(output_file)
  local specs = require("nightfox.spec").load()

  local lines = { header }
  local hlgroups = {}
  local hllinks = {}
  local metas = {}
  local order = {}

  for specname, spec in pairs(specs) do
    table.insert(order, specname)
    local groups = require("nightfox.group").load(spec)

    local hls = {}
    local lks = {}

    metas[specname] = spec.pallet.meta.light and "light" or "dark"

    for name, opts in pairs(groups) do
      if opts.link and opts.link ~= "" then
        table.insert(lks, fmt([[    %s = "%s",]], name, opts.link))
      else
        local rhs = {}
        for key, value in pairs(opts) do
          table.insert(rhs, fmt([[%s = "%s"]], key, value))
        end
        table.sort(rhs)
        table.insert(hls, fmt([[    %s = { %s },]], name, table.concat(rhs, ", ")))
      end
    end
    hlgroups[specname] = hls
    hllinks[specname] = lks
  end

  -- This order table is used to make sure the output of the table alphabetical
  -- and always the same oder. This make sure that calling compile multiple times
  -- Will not result in a different file
  table.sort(order)

  -- Write highlights
  table.insert(lines, [[local metas = {]])
  table.sort(metas)
  for _, name in ipairs(order) do
    table.insert(lines, fmt([[  %s = "%s",]], name, metas[name]))
  end
  table.insert(lines, [[}]])
  table.insert(lines, "")

  -- Write highlights
  table.insert(lines, [[local highlights = {]])
  for _, name in ipairs(order) do
    local value = hlgroups[name]
    table.sort(value)
    table.insert(lines, fmt([[  %s = {]], name))
    table.insert(lines, table.concat(value, "\n"))
    table.insert(lines, [[  },]])
  end
  table.insert(lines, [[}]])
  table.insert(lines, "")

  -- Write links
  table.insert(lines, [[local links = {]])
  for _, name in ipairs(order) do
    local value = hllinks[name]
    table.sort(value)
    table.insert(lines, fmt([[%s = {]], name))
    table.insert(lines, table.concat(value, "\n"))
    table.insert(lines, [[  },]])
  end
  table.insert(lines, [[}]])
  table.insert(lines, "")

  table.insert(lines, vim_highlight_func)
  table.insert(lines, vim_link_func)
  table.insert(lines, clear_func)
  table.insert(lines, set_info_func)

  if config.terminal_colors then
    table.insert(lines, gen_terminal_func(specs, order))
  end

  table.insert(lines, gen_main_func())

  table.insert(lines, footer)

  output_file = output_file or config.compile_path
  local file = io.open(output_file, "w")
  file:write(table.concat(lines, "\n"))
  file:close()
end

function M.clean()
  os.remove(config.compile_path)
end

return M
