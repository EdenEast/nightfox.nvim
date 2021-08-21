#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: palefox
set -g mode-style "fg=#a381ff,bg=#5a5475"
set -g message-style "fg=#a381ff,bg=#5a5475"
set -g message-command-style "fg=#a381ff,bg=#5a5475"
set -g pane-border-style "fg=#5a5475"
set -g pane-active-border-style "fg=#a381ff"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#a381ff,bg=#2E2F3E"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#313242,bg=#a381ff,bold] #S #[fg=#a381ff,bg=#2E2F3E,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#2E2F3E,bg=#2E2F3E,nobold,nounderscore,noitalics]#[fg=#a381ff,bg=#2E2F3E] #{prefix_highlight} #[fg=#5a5475,bg=#2E2F3E,nobold,nounderscore,noitalics]#[fg=#a381ff,bg=#5a5475] %Y-%m-%d  %I:%M %p #[fg=#a381ff,bg=#5a5475,nobold,nounderscore,noitalics]#[fg=#313242,bg=#a381ff,bold] #h "
setw -g window-status-activity-style "underscore,fg=#AEAEA9,bg=#2E2F3E"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#AEAEA9,bg=#2E2F3E"
setw -g window-status-format "#[fg=#2E2F3E,bg=#2E2F3E,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#2E2F3E,bg=#2E2F3E,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#2E2F3E,bg=#5a5475,nobold,nounderscore,noitalics]#[fg=#a381ff,bg=#5a5475,bold] #I  #W #F #[fg=#5a5475,bg=#2E2F3E,nobold,nounderscore,noitalics]"
  