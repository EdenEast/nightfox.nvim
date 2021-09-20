local util = require("nightfox.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      -- Alacirty does not use the format `#` for hex colors it uses `0x`
      alacrittyColors[k] = v:gsub("^#", "0x")
    else
      alacrittyColors[k] = v
    end
  end

  local alacritty = util.template(
    [[
# Nightfox Alacritty Colors
# Style: ${meta.name}
# Upstream: ${meta.url}
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'
  # Normal colors
  normal:
    black:   '${black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${white}'
  # Bright colors
  bright:
    black:   '${black_br}'
    red:     '${red_br}'
    green:   '${green_br}'
    yellow:  '${yellow_br}'
    blue:    '${blue_br}'
    magenta: '${magenta_br}'
    cyan:    '${cyan_br}'
    white:   '${white_br}'
  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${pink}' }
  ]],
    alacrittyColors
  )

  return alacritty
end

return M
