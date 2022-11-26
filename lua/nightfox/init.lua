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

  local cached_stat_file = util.join_paths(config.options.compile_path, "stat")
  local cached_stat = read_file(cached_stat_file)
  local user_stat = vim.loop.fs_stat(debug.getinfo(2).source:sub(2))
  user_stat = user_stat and tostring(user_stat.mtime.sec)

  local cached_fingerprint_file = util.join_paths(config.options.compile_path, "fingerprint")
  local cached_fingerprint = read_file(cached_fingerprint_file) or ""
  local fingerprint = require("nightfox.fingerprint")

  if not user_stat or not cached_stat or (cached_stat ~= user_stat) or (cached_fingerprint ~= fingerprint) then
    util.ensure_dir(config.options.compile_path)
    write_file(cached_fingerprint_file, fingerprint)
    if user_stat then
      write_file(cached_stat_file, user_stat)
    end

    local cached_config = util.join_paths(config.options.compile_path, "config")
    local cached_hash = read_file(cached_config)
    local current_config_hash = config.hash() + override.hash()
    if cached_hash ~= tostring(current_config_hash) then
      M.compile()
      write_file(cached_config, current_config_hash)
    end
  end

  require("nightfox.util.deprecation").check_deprecation(opts)
end

return M
