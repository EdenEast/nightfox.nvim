local config = require("nightfox.config")

local M = {}

function M.compile()
  local compiler = require("nightfox.lib.compiler")
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
    config.set_options(opts)
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
  local is_nvim = util.is_nvim
  local fstat = is_nvim and vim.loop.fs_stat or function(_) end

  local cached_stat = util.join_paths(config.options.compile_path, "stat")
  local file = io.open(cached_stat)
  local last_stat = nil
  if file then
    last_stat = file:read()
    file:close()
  end

  -- Get the file stat of the file that called `setup` and nightfox's ORIG_HEAD file
  -- This means that any changes to either the file that called setup of nightfox itself change
  -- then the stat saved will be different and needs to be re-compiled
  local user_stat = fstat(debug.getinfo(2).source:sub(2))
  local nf_git_stat = fstat(util.join_paths(debug.getinfo(1).source:sub(2, -24), ".git", "ORIG_HEAD"))
  local cur_stat = (user_stat and user_stat.mtime.sec or 0) + (nf_git_stat and nf_git_stat.mtime.sec or 0)

  if not user_stat or last_stat ~= tostring(cur_stat) then
    util.ensure_dir(config.options.compile_path)

    if is_nvim then
      file = io.open(cached_stat, "wb")
      if file then
        file:write(cur_stat)
        file:close()
      end
    end

    local cached_config = util.join_paths(config.options.compile_path, "config")
    file = io.open(cached_config)
    local cached_hash = nil
    if file then
      cached_hash = file:read()
      io.close(file)
    end

    local current_config_hash = config.hash() + override.hash()
    if cached_hash ~= tostring(current_config_hash) then
      M.compile()
      file = io.open(cached_config, "wb")
      if file then
        file:write(current_config_hash)
        file:close()
      end
    end
  end

  require("nightfox.util.deprecation").check_deprecation(opts)
end

return M
