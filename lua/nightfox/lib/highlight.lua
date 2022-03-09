local util = require("nightfox.util")
local fmt = string.format

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
  if not style then
    return {}
  end

  local result = {}
  for token in string.gmatch(style, "([^,]+)") do
    result[token] = true
  end

  return result
end

local function should_link(link)
  return link and link ~= ''
end

local function viml_hl(highlights)
  local highlight_cmds = {}
  for group, opts in pairs(highlights) do
    if should_link(opts.link) then
      table.insert(highlight_cmds, fmt("highlight! link %s %s", group, opts.link))
    else
      local cmd = fmt(
        "highlight %s guifg=%s guibg=%s gui=%s guisp=%s",
        group,
        validate(opts.fg),
        validate(opts.bg),
        validate(opts.style),
        validate(opts.sp)
      )
      table.insert(highlight_cmds, cmd)
    end
  end
  vim.cmd(table.concat(highlight_cmds, "\n"))
end

local function nvim_hl(highlights)
  for group, opts in pairs(highlights) do
    if group == "CursorLine" then
      P(opts)
    end
    local style = parse_style(opts.style)
    vim.api.nvim_set_hl(0, group, {
      background = opts.bg,
      foreground = opts.fg,
      link = should_link(opts.link) and opts.link or nil,
      bold = style.bold,
      italic = style.italic,
      underline = style.underline,
      undercurl = style.undercurl,
    })
  end
end

if vim.fn.has("nvim-0.7") then
  M.highlight = nvim_hl
else
  M.highlight = viml_hl
end

  M.highlight = viml_hl
return M
