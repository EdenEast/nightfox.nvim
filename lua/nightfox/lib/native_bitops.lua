local function round(x)
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

local function get_bitopt(op)
  return function(a, b)
    a = round(a)
    b = round(b)
    return op(a, b)
  end
end

return {
  lshift = get_bitopt(function(a, b)
    return a << b
  end),
  rshift = get_bitopt(function(a, b)
    return a >> b
  end),
  band = get_bitopt(function(a, b)
    return a & b
  end),
  bor = get_bitopt(function(a, b)
    return a | b
  end),
}
