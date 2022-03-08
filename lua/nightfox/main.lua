local hl = require("nightfox.lib.highlight")

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

  vim.g.terminal_color_0 = c.black.base
  vim.g.terminal_color_1 = c.red.base
  vim.g.terminal_color_2 = c.green.base
  vim.g.terminal_color_3 = c.yellow.base
  vim.g.terminal_color_4 = c.blue.base
  vim.g.terminal_color_5 = c.magenta.base
  vim.g.terminal_color_6 = c.cyan.base
  vim.g.terminal_color_7 = c.white.base

  vim.g.terminal_color_8 = c.black.bright
  vim.g.terminal_color_9 = c.red.bright
  vim.g.terminal_color_10 = c.green.bright
  vim.g.terminal_color_11 = c.yellow.bright
  vim.g.terminal_color_12 = c.blue.bright
  vim.g.terminal_color_13 = c.magenta.bright
  vim.g.terminal_color_14 = c.cyan.bright
  vim.g.terminal_color_15 = c.white.bright

  if vim.fn.has("nvim") == 0 then
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
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

function M.load(name)
  local config = require("nightfox.config")

  name = name or config.fox
  local spec = require("nightfox.spec").load(name)
  local groups = require("nightfox.group").load(spec)

  clear_hl()
  set_info(spec)
  hl.highlight(groups)

  if config.options.terminal_colors then
    set_terminal_colors(spec)
  end
end

return M
