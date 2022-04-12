local M = {}

--- Checks if a list-like (vector) table contains `value`.
---@param t table Table to check
---@param value any Value to compare
---@returns true if `t` contains `value`
function M.contains(t, value)
  for _, v in ipairs(t) do
    if v == value then
      return true
    end
  end
  return false
end

--- Merges recursively two or more map-like tables.
---@param ... any Two or more map-like tables.
---@return table Merged table
function M.deep_extend(...)
  local lhs = {}
  for _, rhs in ipairs({ ... }) do
    for k, v in pairs(rhs) do
      if type(lhs[k]) == "table" and type(v) == "table" then
        lhs[k] = M.deep_extend(lhs[k], v)
      else
        lhs[k] = v
      end
    end
  end

  return lhs
end

---Apply a function to each value in a table.
---@param tbl table
---@param f function (value)
function M.map(tbl, f)
  local t = {}
  for k, v in pairs(tbl) do
    t[k] = f(v)
  end
  return t
end

---Filter table based on function
---@param tbl table Table to be filtered
---@param func function Function to apply filter
---@return table
function M.filter(tbl, func)
  local result = {}
  for _, item in ipairs(tbl) do
    if func(item) then
      table.insert(result, item)
    end
  end
  return M(result)
end

---Apply function to each element of table
---@param tbl Table A list of elements
---@param func function to be applied
function M.each(tbl, func)
  for _, item in ipairs(tbl) do
    func(item)
  end
end

function M.deep_copy(obj, seen)
  if type(obj) ~= "table" then
    return obj
  end
  if seen and seen[obj] then
    return seen[obj]
  end

  local s = seen or {}
  local res = {}
  s[obj] = res
  for k, v in pairs(obj) do
    res[M.deep_copy(k, s)] = M.deep_copy(v, s)
  end
  return setmetatable(res, getmetatable(obj))
end

return M
