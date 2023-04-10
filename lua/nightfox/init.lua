local is_vim = vim.fn.has("nvim") ~= 1
if is_vim then
  require("nightfox.lib.vim")
end

local config = require("nightfox.config")

local function read_file(filepath)
  local file = io.open(filepath, "r")
  if file then
    local content = file:read()
    file:close()
    return content
  end
end

local function write_file(filepath, content)
  local file = io.open(filepath, "wb")
  if file then
    file:write(content)
    file:close()
  end
end

local M = {}

function M.compile()
  require("nightfox.lib.log").clear()

  local compiler = require("nightfox.lib." .. (is_vim and "vim." or "") .. "compiler")
  local foxes = require("nightfox.palette").foxes
  for _, style in ipairs(foxes) do
    compiler.compile({ style = style })
  end
end

function M.reset()
  require("nightfox.config").reset()
  require("nightfox.override").reset()
end

-- Avold g:colors_name reloading
local lock = false
local did_setup = false

function M.load(opts)
  if lock then
    return
  end

  if not did_setup then
    M.setup()
  end

  opts = opts or {}

  local _, compiled_file = config.get_compiled_info(opts)
  lock = true

  local f = loadfile(compiled_file)
  if not f then
    M.compile()
    f = loadfile(compiled_file)
  end

  ---@diagnostic disable-next-line: need-check-nil
  f()

  lock = false
end

function M.setup(opts)
  did_setup = true
  opts = opts or {}

  local override = require("nightfox.override")

  if opts.options then
    config.set_options(opts.options)
  end

  if opts.palettes then
    override.palettes = opts.palettes
  end

  if opts.specs then
    override.specs = opts.specs
  end

  if opts.groups then
    override.groups = opts.groups
  end

  local util = require("nightfox.util")
  util.ensure_dir(config.options.compile_path)

  local cached_path = util.join_paths(config.options.compile_path, "cache")
  local cached = read_file(cached_path)

  local git_path = util.join_paths(debug.getinfo(1).source:sub(2, -23), ".git")
  local git = vim.fn.getftime(git_path)
  local hash = require("nightfox.lib.hash")(opts) .. (git == -1 and git_path or git)

  if cached ~= hash then
    M.compile()
    write_file(cached_path, hash)
  end
end

return M
