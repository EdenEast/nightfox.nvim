#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/nightfox_tmux.tmux
set -g mode-style "fg=#286983,bg=#ADAFB9"
set -g message-style "fg=#286983,bg=#ADAFB9"
set -g message-command-style "fg=#286983,bg=#ADAFB9"
set -g pane-border-style "fg=#ADAFB9"
set -g pane-active-border-style "fg=#286983"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#286983,bg=#EEE8E1"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#575279,bg=#286983,bold] #S #[fg=#286983,bg=#EEE8E1,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#EEE8E1,bg=#EEE8E1,nobold,nounderscore,noitalics]#[fg=#286983,bg=#EEE8E1] #{prefix_highlight} #[fg=#ADAFB9,bg=#EEE8E1,nobold,nounderscore,noitalics]#[fg=#286983,bg=#ADAFB9] %Y-%m-%d  %I:%M %p #[fg=#286983,bg=#ADAFB9,nobold,nounderscore,noitalics]#[fg=#575279,bg=#286983,bold] #h "
setw -g window-status-activity-style "underscore,fg=#706C8D,bg=#EEE8E1"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#706C8D,bg=#EEE8E1"
setw -g window-status-format "#[fg=#EEE8E1,bg=#EEE8E1,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#EEE8E1,bg=#EEE8E1,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#EEE8E1,bg=#ADAFB9,nobold,nounderscore,noitalics]#[fg=#286983,bg=#ADAFB9,bold] #I  #W #F #[fg=#ADAFB9,bg=#EEE8E1,nobold,nounderscore,noitalics]"
  