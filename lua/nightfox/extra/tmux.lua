local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local colors = {
    meta = spec.palette.meta,
    bg = spec.bg0,
    fg = spec.fg2,
    fg_alt = spec.fg3,
    blue = spec.palette.blue,
    black = spec.palette.black,
  }

  local content = [[
#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: ${meta.name}
# Upstream: ${meta.url}
set -g mode-style "fg=${bg},bg=${fg}"
set -g message-style "fg=${bg},bg=${fg}"
set -g message-command-style "fg=${bg},bg=${fg}"
set -g pane-border-style "fg=${fg}"
set -g pane-active-border-style "fg=${blue}"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=${fg},bg=${bg}"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=${bg},bg=${blue},bold] #S #[fg=${blue},bg=${bg},nobold,nounderscore,noitalics]"
set -g status-right "#[fg=${bg},bg=${bg},nobold,nounderscore,noitalics]#[fg=${blue},bg=${bg}] #{prefix_highlight} #[fg=${fg},bg=${bg},nobold,nounderscore,noitalics]#[fg=${bg},bg=${fg}] %Y-%m-%d  %I:%M %p #[fg=${blue},bg=${fg},nobold,nounderscore,noitalics]#[fg=${bg},bg=${blue},bold] #h "
setw -g window-status-activity-style "underscore,fg=${fg_alt},bg=${bg}"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=${fg_alt},bg=${bg}"
setw -g window-status-format "#[fg=${bg},bg=${bg},nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=${bg},bg=${bg},nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=${bg},bg=${fg},nobold,nounderscore,noitalics]#[fg=${bg},bg=${fg},bold] #I  #W #F #[fg=${fg},bg=${bg},nobold,nounderscore,noitalics]"
]]

  return template.parse_template_str(content, colors)
end

return M
