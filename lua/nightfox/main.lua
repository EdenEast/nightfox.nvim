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

  vim.g.terminal_color_0 = c.black.base:to_css()
  vim.g.terminal_color_1 = c.red.base:to_css()
  vim.g.terminal_color_2 = c.green.base:to_css()
  vim.g.terminal_color_3 = c.yellow.base:to_css()
  vim.g.terminal_color_4 = c.blue.base:to_css()
  vim.g.terminal_color_5 = c.magenta.base:to_css()
  vim.g.terminal_color_6 = c.cyan.base:to_css()
  vim.g.terminal_color_7 = c.white.base:to_css()

  vim.g.terminal_color_8 = c.black.bright:to_css()
  vim.g.terminal_color_9 = c.red.bright:to_css()
  vim.g.terminal_color_10 = c.green.bright:to_css()
  vim.g.terminal_color_11 = c.yellow.bright:to_css()
  vim.g.terminal_color_12 = c.blue.bright:to_css()
  vim.g.terminal_color_13 = c.magenta.bright:to_css()
  vim.g.terminal_color_14 = c.cyan.bright:to_css()
  vim.g.terminal_color_15 = c.white.bright:to_css()

  if vim.fn.has("nvim") == 0 then
    -- stylua: ignore
    local colors = {
      c.black.base:to_css(),   c.red.base:to_css(),
      c.green.base:to_css(),   c.yellow.base:to_css(),
      c.blue.base:to_css(),    c.magenta.base:to_css(),
      c.cyan.base:to_css(),    c.white.base:to_css(),
      c.black.bright:to_css(), c.red.bright:to_css(),
      c.green.bright:to_css(), c.yellow.bright:to_css(),
      c.blue.bright:to_css(),  c.magenta.bright:to_css(),
      c.cyan.bright:to_css(),  c.white.bright:to_css()
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
