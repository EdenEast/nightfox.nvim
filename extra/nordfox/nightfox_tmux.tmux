#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: nordfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nordfox/nightfox_tmux.tmux
set -g mode-style "fg=#81a1c1,bg=#4b5668"
set -g message-style "fg=#81a1c1,bg=#4b5668"
set -g message-command-style "fg=#81a1c1,bg=#4b5668"
set -g pane-border-style "fg=#4b5668"
set -g pane-active-border-style "fg=#81a1c1"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#81a1c1,bg=#232831"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#3b4252,bg=#81a1c1,bold] #S #[fg=#81a1c1,bg=#232831,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]#[fg=#81a1c1,bg=#232831] #{prefix_highlight} #[fg=#4b5668,bg=#232831,nobold,nounderscore,noitalics]#[fg=#81a1c1,bg=#4b5668] %Y-%m-%d  %I:%M %p #[fg=#81a1c1,bg=#4b5668,nobold,nounderscore,noitalics]#[fg=#3b4252,bg=#81a1c1,bold] #h "
setw -g window-status-activity-style "underscore,fg=#9DA2AC,bg=#232831"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#9DA2AC,bg=#232831"
setw -g window-status-format "#[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#232831,bg=#232831,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#232831,bg=#4b5668,nobold,nounderscore,noitalics]#[fg=#81a1c1,bg=#4b5668,bold] #I  #W #F #[fg=#4b5668,bg=#232831,nobold,nounderscore,noitalics]"
  