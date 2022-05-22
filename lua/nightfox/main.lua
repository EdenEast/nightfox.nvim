local hl = require("nightfox.lib.highlight")
local util = require("nightfox.util")
local cmd = util.is_nvim and vim.cmd or vim.command
local fmt = string.format

local M = {}

local function clear_hl()
  if vim.g.colors_name then
    cmd("hi clear")
  end
end

local function set_info(spec)
  local meta = spec.palette.meta
  local background = meta.light and "light" or "dark"
  cmd("set background=" .. background)
  cmd("set termguicolors")
  vim.g.colors_name = meta.name
end

local function set_terminal_colors(spec)
  local c = spec.palette

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

function M.load(opts)
  opts = {}
  local config = require("nightfox.config")
  local override = require("nightfox.override")
  local name = opts.name or config.fox

  local precompiled_file = util.join_paths(
    config.options.compile_path,
    name .. config.options.compile_file_suffix .. ".lua"
  )

  if util.exists(precompiled_file) then
    cmd("luafile " .. precompiled_file)
  elseif not override.has_override and not config.has_options and not vim.g.nightfox_debug then
    local api_type = util.use_nvim_api and "nvim" or "viml"
    if opts["use_nvim_api"] ~= nil then
      api_type = opts.use_nvim_api and "nvim" or "viml"
    end

    local modname = fmt("nightfox.precompiled.%s.%s_compiled", api_type, name)
    package.loaded[modname] = nil
    require(modname)
  else
    local spec = require("nightfox.spec").load(name)
    local groups = require("nightfox.group").from(spec)

    clear_hl()
    set_info(spec)
    hl.highlight(groups)

    -- HACK: There is an issue with `nvim_set_hl` currently where calling `vim.api.nvim_get_hl_by_name("Normal", true)` will
    -- return `{ [true] = 6 }` if we are using this api_call then we have to set Normal with `:highlight` command to get
    -- around this for now
    if util.use_nvim_api then
      hl.alt_highlight({ Normal = groups.Normal })
    end

    if config.options.terminal_colors then
      set_terminal_colors(spec)
    end
  end
end

return M
