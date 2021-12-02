#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: hybridfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/hybridfox/nightfox_tmux.tmux
set -g mode-style "fg=#81a2be,bg=#42484d"
set -g message-style "fg=#81a2be,bg=#42484d"
set -g message-command-style "fg=#81a2be,bg=#42484d"
set -g pane-border-style "fg=#42484d"
set -g pane-active-border-style "fg=#81a2be"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#81a2be,bg=#161719"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#282a2e,bg=#81a2be,bold] #S #[fg=#81a2be,bg=#161719,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]#[fg=#81a2be,bg=#161719] #{prefix_highlight} #[fg=#42484d,bg=#161719,nobold,nounderscore,noitalics]#[fg=#81a2be,bg=#42484d] %Y-%m-%d  %I:%M %p #[fg=#81a2be,bg=#42484d,nobold,nounderscore,noitalics]#[fg=#282a2e,bg=#81a2be,bold] #h "
setw -g window-status-activity-style "underscore,fg=#A7AAA8,bg=#161719"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#A7AAA8,bg=#161719"
setw -g window-status-format "#[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#161719,bg=#42484d,nobold,nounderscore,noitalics]#[fg=#81a2be,bg=#42484d,bold] #I  #W #F #[fg=#42484d,bg=#161719,nobold,nounderscore,noitalics]"
  