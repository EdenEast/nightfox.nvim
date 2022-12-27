local bitop = bit or bit32 or require("nightfox.lib.native_bit")

-- https://theartincode.stanis.me/008-djb2/
local function djb2(s)
  local h = 5381
  local t = { string.byte(s, 1, #s) }
  for i = 1, #t do
    h = bitop.lshift(h, 5) + t[i] -- h * 33 + c
  end
  return h
end

-- Reference: https://github.com/catppuccin/nvim/blob/151b5f6aa74f08a707a7862519bdc38bb2b9f505/lua/catppuccin/lib/hashing.lua
local function hash(x)
  local t = type(x)
  if t == "table" then
    local h = 0
    for k, v in pairs(x) do
      h = bitop.bxor(h, djb2(k .. hash(v)))
    end
    return h
  elseif t == "function" then
    return djb2(string.dump(x))
  end
  return tostring(x)
end

return hash
