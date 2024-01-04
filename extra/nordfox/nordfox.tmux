#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: nordfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nordfox/nordfox.tmux
set -g mode-style "fg=#232831,bg=#abb1bb"
set -g message-style "fg=#232831,bg=#abb1bb"
set -g message-command-style "fg=#232831,bg=#abb1bb"
set -g pane-border-style "fg=#abb1bb"
set -g pane-active-border-style "fg=#81a1c1"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#abb1bb,bg=#232831"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#232831,bg=#81a1c1,bold] #S #[fg=#81a1c1,bg=#232831,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]#[fg=#81a1c1,bg=#232831] #{prefix_highlight} #[fg=#abb1bb,bg=#232831,nobold,nounderscore,noitalics]#[fg=#232831,bg=#abb1bb] %Y-%m-%d  %I:%M %p #[fg=#81a1c1,bg=#abb1bb,nobold,nounderscore,noitalics]#[fg=#232831,bg=#81a1c1,bold] #h "
setw -g window-status-activity-style "underscore,fg=#7e8188,bg=#232831"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#7e8188,bg=#232831"
setw -g window-status-format "#[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#232831,bg=#abb1bb,nobold,nounderscore,noitalics]#[fg=#232831,bg=#abb1bb,bold] #I  #W #F #[fg=#abb1bb,bg=#232831,nobold,nounderscore,noitalics]"
