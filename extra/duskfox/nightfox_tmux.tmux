#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: duskfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/duskfox/nightfox_tmux.tmux
set -g mode-style "fg=#569FBA,bg=#555169"
set -g message-style "fg=#569FBA,bg=#555169"
set -g message-command-style "fg=#569FBA,bg=#555169"
set -g pane-border-style "fg=#555169"
set -g pane-active-border-style "fg=#569FBA"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#569FBA,bg=#1F1D2E"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#393552,bg=#569FBA,bold] #S #[fg=#569FBA,bg=#1F1D2E,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1F1D2E,bg=#1F1D2E,nobold,nounderscore,noitalics]#[fg=#569FBA,bg=#1F1D2E] #{prefix_highlight} #[fg=#555169,bg=#1F1D2E,nobold,nounderscore,noitalics]#[fg=#569FBA,bg=#555169] %Y-%m-%d  %I:%M %p #[fg=#569FBA,bg=#555169,nobold,nounderscore,noitalics]#[fg=#393552,bg=#569FBA,bold] #h "
setw -g window-status-activity-style "underscore,fg=#BEBDCF,bg=#1F1D2E"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#BEBDCF,bg=#1F1D2E"
setw -g window-status-format "#[fg=#1F1D2E,bg=#1F1D2E,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1F1D2E,bg=#1F1D2E,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1F1D2E,bg=#555169,nobold,nounderscore,noitalics]#[fg=#569FBA,bg=#555169,bold] #I  #W #F #[fg=#555169,bg=#1F1D2E,nobold,nounderscore,noitalics]"
  