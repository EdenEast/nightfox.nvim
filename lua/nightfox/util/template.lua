local M = {}

---Convert a Shade or Color to a css string
---@param value Shade | Color
---@return string css hex string
local function to_value(value)
  return value.base and value.base or value:to_css()
end

---Walk path (one.two.three) in a table and return value
---@param t table
---@param path string
---@return any
local function get_path(t, path)
  for segment in path:gmatch("[^.]+") do
    if type(t) == "table" then
      t = t[segment]
    end
  end
  return t
end

---Parse string for configuration template
---@param str string
---@param spec Spec
---@return any
local function parse_string(str, spec)
  if str == "" then
    return str
  end

  if str[1] == "#" then
    return str
  end

  local path = get_path(spec, str)
  return path and path.base and path.base or path or str
end

function M.parse(template, spec)
  local result = {}

  for group, opts in pairs(template) do
    if type(opts) == "table" then
      local new = {}
      for key, value in pairs(opts) do
        new[key] = type(value) == "table" and to_value(value) or parse_string(value, spec)
      end
      result[group] = new
    else
      result[group] = parse_string(opts, spec)
    end
  end

  return result
end

function M.parse_template_str(template, spec)
  return (
    template:gsub("($%b{})", function(w)
      local path = w:sub(3, -2)
      local value = get_path(spec, path) or w
      if type(value) == "table" then
        return value.base and value.base or value
      else
        return value or w
      end
    end)
  )
end

return M
