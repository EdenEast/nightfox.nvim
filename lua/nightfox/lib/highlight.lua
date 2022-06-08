local util = require("nightfox.util")
local fmt = string.format

local cmd = util.is_nvim and vim.cmd or vim.command

local M = {}

--#region TYPES

---@class HighlightSpec
---@field fg string
---@field bg string
---@field style string
---@field sp string
---@field link string
---@field force boolean

--#endregion

---Validate input input from opts table and return a hex string if opt exists
---@param input string|Color|nil
---@return string
local function validate(input)
  return input and input or "NONE"
end

local function parse_style(style)
  if not style or style == "NONE" then
    return {}
  end

  local result = {}
  for token in string.gmatch(style, "([^,]+)") do
    result[token] = true
  end

  return result
end

---Validate input input from opts table and return a hex string if opt exists
---@param input string|Color|nil
---@return string
M.parse_style = parse_style

local function should_link(link)
  return link and link ~= ""
end

local function viml_hl(highlights)
  local highlight_cmds = {}
  for group, opts in pairs(highlights) do
    if should_link(opts.link) then
      table.insert(highlight_cmds, fmt("highlight! link %s %s", group, opts.link))
    else
      table.insert(
        highlight_cmds,
        fmt(
          "highlight %s guifg=%s guibg=%s gui=%s guisp=%s",
          group,
          validate(opts.fg),
          validate(opts.bg),
          validate(opts.style),
          validate(opts.sp)
        )
      )
    end
  end
  cmd(table.concat(highlight_cmds, "\n"))
end

local function nvim_hl(highlights)
  for group, opts in pairs(highlights) do
    if should_link(opts.link) then
      vim.api.nvim_set_hl(0, group, {
        link = opts.link,
      })
    else
      local values = parse_style(opts.style)
      values.bg = opts.bg
      values.fg = opts.fg
      values.sp = opts.sp
      vim.api.nvim_set_hl(0, group, values)
    end
  end
end

if util.use_nvim_api then
  M.alt_highlight = viml_hl
  M.highlight = nvim_hl
else
  M.highlight = viml_hl
end

return M
