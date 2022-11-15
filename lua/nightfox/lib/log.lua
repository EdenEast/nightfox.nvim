local util = require("nightfox.util")
local is_nvim = util.is_nvim
local fmt = string.format

local nvim_log = {
  info = function(...)
    vim.notify({ ... }, vim.log.levels.INFO, { title = "nightfox" })
  end,

  warn = function(...)
    vim.notify({ ... }, vim.log.levels.WARN, { title = "nightfox" })
  end,

  error = function(...)
    vim.notify({ ... }, vim.log.levels.ERROR, { title = "nightfox" })
  end,
}

local vim_log = {

  info = function(...)
    local msgs = { ... }
    local lines = {
      "echohl MoreMsg",
      [[echo "[info][nightfox]: "]],
      "echohl None",
    }
    local first = table.remove(msgs, 1)
    if first then
      table.insert(lines, fmt([[echon "%s"]], first))
    end
    for _, v in ipairs(msgs) do
      table.insert(lines, fmt([[echo "%s"]], v))
    end

    vim.command(table.concat(lines, " | "))
  end,

  warn = function(...)
    local msgs = { ... }
    local lines = {
      "echohl WarningMsg",
      [[echo "[warn][nightfox]: "]],
      "echohl None",
    }
    local first = table.remove(msgs, 1)
    if first then
      table.insert(lines, fmt([[echon "%s"]], first))
    end
    for _, v in ipairs(msgs) do
      table.insert(lines, fmt([[echo "%s"]], v))
    end

    vim.command(table.concat(lines, " | "))
  end,

  error = function(...)
    local msgs = { ... }
    local lines = {
      "echohl ErrorMsg",
      [[echo "[error][nightfox]: "]],
      "echohl None",
    }
    local first = table.remove(msgs, 1)
    if first then
      table.insert(lines, fmt([[echon "%s"]], first))
    end
    for _, v in ipairs(msgs) do
      table.insert(lines, fmt([[echo "%s"]], v))
    end

    vim.command(table.concat(lines, " | "))
  end,
}

return is_nvim and nvim_log or vim_log
