local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
# Nightfox colors for Ghostty
## name: ${palette.meta.name}
## upstream: ${palette.meta.url}

background = ${bg1}
foreground = ${fg1}
selection-background = ${sel0}
selection-foreground = ${fg1}
cursor-color = ${fg1}

# normal
palette = 0=${palette.black}
palette = 1=${palette.red}
palette = 2=${palette.green}
palette = 3=${palette.yellow}
palette = 4=${palette.blue}
palette = 5=${palette.magenta}
palette = 6=${palette.cyan}
palette = 7=${palette.white}

# bright
palette = 8=${palette.black.bright}
palette = 9=${palette.red.bright}
palette = 10=${palette.green.bright}
palette = 11=${palette.yellow.bright}
palette = 12=${palette.blue.bright}
palette = 13=${palette.magenta.bright}
palette = 14=${palette.cyan.bright}
palette = 15=${palette.white.bright}

# extended colors
palette = 16=${palette.orange}
]]

  return template.parse_template_str(content, spec)
end

return M
