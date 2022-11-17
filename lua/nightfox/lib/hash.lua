local version = tonumber(string.sub(_VERSION, 5, 7)) -- LuaJIT-compatible
local bitop = version >= 5.3 and require("nightfox.lib.native_bitops") or (bit and bit or bit32 and bit32)
if not bitop then
  require("nightfox.lib.log").error(
    "Unable to find lua library `bit` or `bit32`. Please make sure lua vesion is 5.1, 5.2 or 5.3"
  )
  return {}
end

local M = {}

-- Reference: https://github.com/catppuccin/nvim/blob/97c7781/lua/catppuccin/lib/hashing.lua
local hash_str = function(str) -- https://stackoverflow.com/a/57960443
  local hash = 0x12345678
  local tbl = { string.byte(str, 1, #str) }
  for i = 1, #tbl do
    hash = bitop.bxor(hash, tbl[i])
    hash = hash * 0x5bd1e995
    hash = bitop.bxor(hash, bitop.rshift(hash, 15))
  end
  return hash
end

function M.hash(tbl) -- Xor hashing: https://codeforces.com/blog/entry/85900
  local t = type(tbl)
  if t == "boolean" then
    return hash_str(tbl and "1" or "0")
  elseif t == "string" then
    return hash_str(tbl)
  elseif t == "number" then
    return tostring(tbl)
  elseif t == "function" then
    return hash_str(string.dump(tbl))
  else
    local hash = 0
    for k, v in pairs(tbl) do
      hash = bitop.bxor(hash, hash_str(k .. ":" .. M.hash(v)))
    end
    return hash
  end
end

return M
