#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: carbonfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/carbonfox/carbonfox.tmux
set -g mode-style "fg=#0b0b0b,bg=#b1b2b5"
set -g message-style "fg=#0b0b0b,bg=#b1b2b5"
set -g message-command-style "fg=#0b0b0b,bg=#b1b2b5"
set -g pane-border-style "fg=#b1b2b5"
set -g pane-active-border-style "fg=#78a9ff"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#b1b2b5,bg=#0b0b0b"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#0b0b0b,bg=#78a9ff,bold] #S #[fg=#78a9ff,bg=#0b0b0b,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#0b0b0b,bg=#0b0b0b,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#0b0b0b] #{prefix_highlight} #[fg=#b1b2b5,bg=#0b0b0b,nobold,nounderscore,noitalics]#[fg=#0b0b0b,bg=#b1b2b5] %Y-%m-%d  %I:%M %p #[fg=#78a9ff,bg=#b1b2b5,nobold,nounderscore,noitalics]#[fg=#0b0b0b,bg=#78a9ff,bold] #h "
setw -g window-status-activity-style "underscore,fg=#737476,bg=#0b0b0b"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#737476,bg=#0b0b0b"
setw -g window-status-format "#[fg=#0b0b0b,bg=#0b0b0b,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#0b0b0b,bg=#0b0b0b,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#0b0b0b,bg=#b1b2b5,nobold,nounderscore,noitalics]#[fg=#0b0b0b,bg=#b1b2b5,bold] #I  #W #F #[fg=#b1b2b5,bg=#0b0b0b,nobold,nounderscore,noitalics]"
