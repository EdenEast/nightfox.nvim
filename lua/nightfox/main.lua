local hl = require("nightfox.lib.highlight")
local util = require("nightfox.util")

local M = {}

local function clear_hl()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
end

local function set_info(spec)
  local meta = spec.pallet.meta
  local background = meta.light and "light" or "dark"
  vim.cmd("set background=" .. background)
  vim.cmd("set termguicolors")
  vim.g.colors_name = meta.name
end

local function set_terminal_colors(spec)
  local c = spec.pallet

  -- stylua: ignore
  local colors = {
    c.black.base,   c.red.base,
    c.green.base,   c.yellow.base,
    c.blue.base,    c.magenta.base,
    c.cyan.base,    c.white.base,
    c.black.bright, c.red.bright,
    c.green.bright, c.yellow.bright,
    c.blue.bright,  c.magenta.bright,
    c.cyan.bright,  c.white.bright
  }

  for i, value in ipairs(colors) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = value
  end
  if vim.fn.has("nvim") == 0 then
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

function M.load(name)
  local config = require("nightfox.config")
  local override = require("nightfox.override")
  name = name or config.fox

  local precompiled_file = util.join_paths(
    config.options.compile_path,
    name .. config.options.compile_file_suffix .. ".lua"
  )

  if util.exists(precompiled_file) then
    vim.cmd("luafile " .. precompiled_file)
  elseif not override.has_override and not config.has_options then
    require("nightfox.precompiled." .. name .. "_compiled")
  else
    local spec = require("nightfox.spec").load(name)
    local groups = require("nightfox.group").load(spec)

    clear_hl()
    set_info(spec)
    hl.highlight(groups)

    if config.options.terminal_colors then
      set_terminal_colors(spec)
    end
  end
end

return M
