-- Reference: https://github.com/neovim/neovim/blob/master/runtime/lua/vim/shared.lua

local function split(inputstr, sep)
  sep = sep or "%s"
  local t = {}
  for field, s in string.gmatch(inputstr, "([^" .. sep .. "]*)(" .. sep .. "?)") do
    table.insert(t, field)
    if s == "" then
      return t
    end
  end
end

local function tbl_isempty(t)
  assert(type(t) == "table", string.format("Expected table, got %s", type(t)))
  return next(t) == nil
end

local function tbl_islist(t)
  if type(t) ~= "table" then
    return false
  end

  local count = 0

  for k, _ in pairs(t) do
    if type(k) == "number" then
      count = count + 1
    else
      return false
    end
  end

  if count > 0 then
    return true
  else
    -- TODO(bfredl): in the future, we will always be inside nvim
    -- then this check can be deleted.
    if vim._empty_dict_mt == nil then
      return false
    end
    return getmetatable(t) ~= vim._empty_dict_mt
  end
end

local function can_merge(v)
  return type(v) == "table" and (tbl_isempty(v) or not tbl_islist(v))
end

local function tbl_extend(behavior, deep_extend, ...)
  if behavior ~= "error" and behavior ~= "keep" and behavior ~= "force" then
    error('invalid "behavior": ' .. tostring(behavior))
  end

  if select("#", ...) < 2 then
    error("wrong number of arguments (given " .. tostring(1 + select("#", ...)) .. ", expected at least 3)")
  end

  local ret = {}
  if vim._empty_dict_mt ~= nil and getmetatable(select(1, ...)) == vim._empty_dict_mt then
    ret = vim.empty_dict()
  end

  for i = 1, select("#", ...) do
    local tbl = select(i, ...)
    if tbl then
      for k, v in pairs(tbl) do
        if deep_extend and can_merge(v) and can_merge(ret[k]) then
          ret[k] = tbl_extend(behavior, true, ret[k], v)
        elseif behavior ~= "force" and ret[k] ~= nil then
          if behavior == "error" then
            error("key found in more than one map: " .. k)
          end -- Else behavior is "keep".
        else
          ret[k] = v
        end
      end
    end
  end
  return ret
end

function vim.tbl_deep_extend(behavior, ...)
  return tbl_extend(behavior, true, ...)
end

vim.log = {
  levels = {
    TRACE = 0,
    DEBUG = 1,
    INFO = 2,
    WARN = 3,
    ERROR = 4,
    OFF = 5,
  },
}

--- Filter a table using a predicate function
---
---@generic T
---@param func fun(value: T): boolean (function) Function
---@param t table<any, T> (table) Table
---@return T[] (table) Table of filtered values
function vim.tbl_filter(func, t)
  local rettab = {}
  for _, entry in pairs(t) do
    if func(entry) then
      table.insert(rettab, entry)
    end
  end
  return rettab
end

--- Display a notification to the user.
---
--- This function can be overridden by plugins to display notifications using a
--- custom provider (such as the system notification provider). By default,
--- writes to |:messages|.
---
---@param msg string Content of the notification to show to the user.
---@param level number|nil One of the values from |vim.log.levels|.
---@param opts table|nil Optional parameters. Unused by default.
function vim.notify(msg, level, opts) -- luacheck: no unused args
  if level == vim.log.levels.ERROR then
    vim.command("echohl ErrorMsg")
  elseif level == vim.log.levels.WARN then
    vim.command("echohl WarningMsg")
  end

  for _, v in ipairs(split(msg, "\n")) do
    vim.command(string.format([[echo "%s"]], v))
  end

  vim.command("echohl None")
end
