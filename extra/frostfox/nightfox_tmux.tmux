#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: frostfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/frostfox/nightfox_tmux.tmux
set -g mode-style "fg=#75beff,bg=#d9d5bd"
set -g message-style "fg=#75beff,bg=#d9d5bd"
set -g message-command-style "fg=#75beff,bg=#d9d5bd"
set -g pane-border-style "fg=#d9d5bd"
set -g pane-active-border-style "fg=#75beff"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#75beff,bg=#1f2435"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#393552,bg=#75beff,bold] #S #[fg=#75beff,bg=#1f2435,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1f2435,bg=#1f2435,nobold,nounderscore,noitalics]#[fg=#75beff,bg=#1f2435] #{prefix_highlight} #[fg=#d9d5bd,bg=#1f2435,nobold,nounderscore,noitalics]#[fg=#75beff,bg=#d9d5bd] %Y-%m-%d  %I:%M %p #[fg=#75beff,bg=#d9d5bd,nobold,nounderscore,noitalics]#[fg=#393552,bg=#75beff,bold] #h "
setw -g window-status-activity-style "underscore,fg=#6e729a,bg=#1f2435"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#6e729a,bg=#1f2435"
setw -g window-status-format "#[fg=#1f2435,bg=#1f2435,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1f2435,bg=#1f2435,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1f2435,bg=#d9d5bd,nobold,nounderscore,noitalics]#[fg=#75beff,bg=#d9d5bd,bold] #I  #W #F #[fg=#d9d5bd,bg=#1f2435,nobold,nounderscore,noitalics]"
