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
  require("nightfox.util").ensure_dir(config.options.compile_path)
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

function M.load(opts)
  if lock then
    return
  end

  opts = opts or {}

  local _, compiled_file = config.get_compiled_info(opts)
  lock = true

  local f = loadfile(compiled_file)
  if not f then
    M.compile()
    f = loadfile(compiled_file)
  end

  f()

  lock = false
end

function M.setup(opts)
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
  local cached_fingerprint_file = util.join_paths(config.options.compile_path, "fingerprint")
  local cached_stat_file = util.join_paths(config.options.compile_path, "stat")
  local cached_config_file = util.join_paths(config.options.compile_path, "config")

  local cached_fingerprint = read_file(cached_fingerprint_file)
  local fingerprint = require("nightfox.fingerprint")

  local should_compile = fingerprint ~= cached_fingerprint

  local user_stat = nil
  if config.options.check_cache then
    local fstat = vim.loop.fs_stat(debug.getinfo(2).source:sub(2))
    user_stat = fstat and tostring(fstat.mtime.sec)

    if not should_compile then
      should_compile = user_stat ~= read_file(cached_stat_file)
    end
  end

  local config_hash = config.hash() + override.hash()
  if not should_compile then
    should_compile = tostring(config_hash) ~= read_file(cached_config_file)
  end

  if should_compile then
    M.compile()
    write_file(cached_fingerprint_file, fingerprint)
    write_file(cached_config_file, config_hash)
    if user_stat then
      write_file(cached_stat_file, user_stat)
    end
  end

  require("nightfox.util.deprecation").check_deprecation(opts)
end

return M
