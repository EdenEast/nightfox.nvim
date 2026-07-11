#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: hybridfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/hybridfox/nightfox_tmux.tmux
set -g mode-style "fg=#161719,bg=#aeafb0"
set -g message-style "fg=#161719,bg=#aeafb0"
set -g message-command-style "fg=#161719,bg=#aeafb0"
set -g pane-border-style "fg=#aeafb0"
set -g pane-active-border-style "fg=#81a2be"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#aeafb0,bg=#161719"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#161719,bg=#81a2be,bold] #S #[fg=#81a2be,bg=#161719,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]#[fg=#81a2be,bg=#161719] #{prefix_highlight} #[fg=#aeafb0,bg=#161719,nobold,nounderscore,noitalics]#[fg=#161719,bg=#aeafb0] %Y-%m-%d  %I:%M %p #[fg=#81a2be,bg=#aeafb0,nobold,nounderscore,noitalics]#[fg=#161719,bg=#81a2be,bold] #h "
setw -g window-status-activity-style "underscore,fg=#42484d,bg=#161719"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#42484d,bg=#161719"
setw -g window-status-format "#[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#161719,bg=#161719,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#161719,bg=#aeafb0,nobold,nounderscore,noitalics]#[fg=#161719,bg=#aeafb0,bold] #I  #W #F #[fg=#aeafb0,bg=#161719,nobold,nounderscore,noitalics]"
