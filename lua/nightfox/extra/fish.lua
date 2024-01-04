local template = require("nightfox.util.template")

local M = {}

local function conv(color)
  return color:gsub("^#", "")
end

local function construct(shade)
  return {
    base = conv(shade.base),
    bright = conv(shade.bright),
  }
end

function M.generate(spec, _)
  -- Remove '#' from color
  local p = spec.palette
  local colors = {
    meta = p.meta,
    bg = conv(spec.bg1),
    fg = conv(spec.fg1),
    comment = conv(spec.syntax.comment),
    sel = conv(spec.sel0),
    black = construct(p.black),
    red = construct(p.red),
    green = construct(p.green),
    yellow = construct(p.yellow),
    blue = construct(p.blue),
    magenta = construct(p.magenta),
    cyan = construct(p.cyan),
    white = construct(p.white),
    orange = construct(p.orange),
    pink = construct(p.pink),
  }

  local content = [[
# Nightfox Color Palette
# Style: ${meta.name}
# Upstream: ${meta.url}
set -l foreground ${fg}
set -l selection ${sel}
set -l comment ${comment}
set -l red ${red}
set -l orange ${orange}
set -l yellow ${yellow}
set -l green ${green}
set -l purple ${magenta}
set -l cyan ${cyan}
set -l pink ${pink}

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
]]

  return template.parse_template_str(content, colors)
end

return M
