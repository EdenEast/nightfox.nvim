local bitop = bit or bit32 or require("nightfox.lib.native_bit")

-- https://theartincode.stanis.me/008-djb2/
local function djb2(s)
  local h = 5381
  for i = 1, #s do
    h = bitop.lshift(h, 5) + string.byte(s, i) -- h * 33 + c
  end
  return h
end

-- Reference: https://github.com/catppuccin/nvim/blob/60f8f40df0db92b5715642b3ea7074380c4b7995/lua/catppuccin/lib/hashing.lua
local function hash(x)
  local t = type(x)
  if t == "table" then
    local h = 0
    for k, v in next, x do
      h = bitop.bxor(h, djb2(k .. hash(v)))
    end
    return h
  elseif t == "function" then
    return djb2(string.dump(x))
  end
  return tostring(x)
end

return hash
