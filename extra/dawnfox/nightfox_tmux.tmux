#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nightfox_tmux.tmux
set -g mode-style "fg=#286983,bg=#625C87"
set -g message-style "fg=#286983,bg=#625C87"
set -g message-command-style "fg=#286983,bg=#625C87"
set -g pane-border-style "fg=#625C87"
set -g pane-active-border-style "fg=#286983"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#286983,bg=#EBE5DF"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#575279,bg=#286983,bold] #S #[fg=#286983,bg=#EBE5DF,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#EBE5DF,bg=#EBE5DF,nobold,nounderscore,noitalics]#[fg=#286983,bg=#EBE5DF] #{prefix_highlight} #[fg=#625C87,bg=#EBE5DF,nobold,nounderscore,noitalics]#[fg=#286983,bg=#625C87] %Y-%m-%d  %I:%M %p #[fg=#286983,bg=#625C87,nobold,nounderscore,noitalics]#[fg=#575279,bg=#286983,bold] #h "
setw -g window-status-activity-style "underscore,fg=#a8a3b3,bg=#EBE5DF"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a8a3b3,bg=#EBE5DF"
setw -g window-status-format "#[fg=#EBE5DF,bg=#EBE5DF,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#EBE5DF,bg=#EBE5DF,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#EBE5DF,bg=#625C87,nobold,nounderscore,noitalics]#[fg=#286983,bg=#625C87,bold] #I  #W #F #[fg=#625C87,bg=#EBE5DF,nobold,nounderscore,noitalics]"
