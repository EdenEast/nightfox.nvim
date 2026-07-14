#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: gruvfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/gruvfox/gruvfox.tmux
set -g mode-style "fg=#141617,bg=#d5c4a1"
set -g message-style "fg=#141617,bg=#d5c4a1"
set -g message-command-style "fg=#141617,bg=#d5c4a1"
set -g pane-border-style "fg=#d5c4a1"
set -g pane-active-border-style "fg=#83a598"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#d5c4a1,bg=#141617"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#141617,bg=#83a598,bold] #S #[fg=#83a598,bg=#141617,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#141617,bg=#141617,nobold,nounderscore,noitalics]#[fg=#83a598,bg=#141617] #{prefix_highlight} #[fg=#d5c4a1,bg=#141617,nobold,nounderscore,noitalics]#[fg=#141617,bg=#d5c4a1] %Y-%m-%d  %I:%M %p #[fg=#83a598,bg=#d5c4a1,nobold,nounderscore,noitalics]#[fg=#141617,bg=#83a598,bold] #h "
setw -g window-status-activity-style "underscore,fg=#bdae93,bg=#141617"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#bdae93,bg=#141617"
setw -g window-status-format "#[fg=#141617,bg=#141617,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#141617,bg=#141617,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#141617,bg=#d5c4a1,nobold,nounderscore,noitalics]#[fg=#141617,bg=#d5c4a1,bold] #I  #W #F #[fg=#d5c4a1,bg=#141617,nobold,nounderscore,noitalics]"
