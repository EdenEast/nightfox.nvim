local nf_table = require"lightline.colorscheme.nightfox"

function dump(obj)
  if type(obj) ~= 'table' then
    return "'" .. tostring(obj) .. "'"
  end

  local i = 0
  local ret = ''
  local is_arr = 0
  for k,v in pairs(obj) do
    if type(k) ~= 'number' then
      -- the `obj` is a dict
      if i == 0 then
        -- first item
        ret = '{'
      else
        ret = ret .. ', '
      end

      -- wrap the key with single quotes
      k = "'" .. k .. "'"
      ret = ret .. k .. ': ' .. dump(v)
    else
      -- the `obj` is an array
      if i == 0 then
        -- first item
        ret = '['
        is_arr = 1
      else
        ret = ret .. ', '
      end

      ret = ret .. dump(v)
    end

    i = i + 1
  end

  if is_arr == 0 then
    return ret .. '}'
  else
    return ret .. ']'
  end
end

return dump(nf_table)

