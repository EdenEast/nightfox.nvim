#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: nightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nightfox/nightfox_tmux.tmux
set -g mode-style "fg=#719cd6,bg=#3b4261"
set -g message-style "fg=#719cd6,bg=#3b4261"
set -g message-command-style "fg=#719cd6,bg=#3b4261"
set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#719cd6"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#719cd6,bg=#131A24"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#393b44,bg=#719cd6,bold] #S #[fg=#719cd6,bg=#131A24,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#131A24,bg=#131A24,nobold,nounderscore,noitalics]#[fg=#719cd6,bg=#131A24] #{prefix_highlight} #[fg=#3b4261,bg=#131A24,nobold,nounderscore,noitalics]#[fg=#719cd6,bg=#3b4261] %Y-%m-%d  %I:%M %p #[fg=#719cd6,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#393b44,bg=#719cd6,bold] #h "
setw -g window-status-activity-style "underscore,fg=#AEAFB0,bg=#131A24"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#AEAFB0,bg=#131A24"
setw -g window-status-format "#[fg=#131A24,bg=#131A24,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#131A24,bg=#131A24,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#131A24,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#719cd6,bg=#3b4261,bold] #I  #W #F #[fg=#3b4261,bg=#131A24,nobold,nounderscore,noitalics]"
  