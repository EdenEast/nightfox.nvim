local M = {}

local Color = require("nightfox.lib.color")

---@param name string
---@return table
function M.generate(name)
  local spec = require("nightfox.spec").load(name)
  local pal = spec.palette
  local bg = Color.from_hex(spec.bg0)
  local fg = spec.fg2
  local b = bg:to_css()

  ---@param color string
  ---@param amount number|nil
  ---@return table
  local function generate_mode(color, amount)
    amount = amount or 0.3
    local fade = bg:blend(Color.from_hex(color), amount):to_css()
    return {
      left = { { b, color }, { fg, fade } },
      right = { { fg, fade } },
      middle = { { fg, b } },
    }
  end

  local tabline = {
    left = { { spec.fg3, spec.bg2 } }, -- Non selected tabs
    right = { { pal.red.base, b } }, -- Close button
    middle = { { b, b } }, -- Fill color
    tabsel = { { spec.fg1, spec.bg4 } }, -- Selected tab
  }

  -- stylua: ignore
  return {
    normal   = generate_mode(pal.blue.base),
    insert   = generate_mode(pal.green.base),
    command  = generate_mode(pal.yellow.base),
    visual   = generate_mode(pal.magenta.base),
    replace  = generate_mode(pal.red.base),
    inactive = generate_mode(spec.fg3),
    tabline  = tabline,
  }
end

---@param obj unknown
---@return string
local function inner_dump(obj)
  if type(obj) ~= "table" then
    return "'" .. tostring(obj) .. "'"
  end

  local i = 0
  local ret = ""
  local is_arr = 0
  for k, v in pairs(obj) do
    if type(k) ~= "number" then
      -- the `obj` is a dict
      if i == 0 then
        -- first item
        ret = "{"
      else
        ret = ret .. ", "
      end

      -- wrap the key with single quotes
      k = "'" .. k .. "'"
      ret = ret .. k .. ": " .. inner_dump(v)
    else
      -- the `obj` is an array
      if i == 0 then
        -- first item
        ret = "["
        is_arr = 1
      else
        ret = ret .. ", "
      end

      ret = ret .. inner_dump(v)
    end

    i = i + 1
  end

  if is_arr == 0 then
    return ret .. "}"
  else
    return ret .. "]"
  end
end

---@param name string
---@return string
function M.dump(name)
  local obj = M.generate(name)
  return inner_dump(obj)
end

return M
