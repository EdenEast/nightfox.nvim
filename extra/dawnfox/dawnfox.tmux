#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/dawnfox.tmux
set -g mode-style "fg=#ebe5df,bg=#625c87"
set -g message-style "fg=#ebe5df,bg=#625c87"
set -g message-command-style "fg=#ebe5df,bg=#625c87"
set -g pane-border-style "fg=#625c87"
set -g pane-active-border-style "fg=#286983"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#625c87,bg=#ebe5df"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#ebe5df,bg=#286983,bold] #S #[fg=#286983,bg=#ebe5df,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#ebe5df,bg=#ebe5df,nobold,nounderscore,noitalics]#[fg=#286983,bg=#ebe5df] #{prefix_highlight} #[fg=#625c87,bg=#ebe5df,nobold,nounderscore,noitalics]#[fg=#ebe5df,bg=#625c87] %Y-%m-%d  %I:%M %p #[fg=#286983,bg=#625c87,nobold,nounderscore,noitalics]#[fg=#ebe5df,bg=#286983,bold] #h "
setw -g window-status-activity-style "underscore,fg=#a8a3b3,bg=#ebe5df"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a8a3b3,bg=#ebe5df"
setw -g window-status-format "#[fg=#ebe5df,bg=#ebe5df,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#ebe5df,bg=#ebe5df,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#ebe5df,bg=#625c87,nobold,nounderscore,noitalics]#[fg=#ebe5df,bg=#625c87,bold] #I  #W #F #[fg=#625c87,bg=#ebe5df,nobold,nounderscore,noitalics]"
