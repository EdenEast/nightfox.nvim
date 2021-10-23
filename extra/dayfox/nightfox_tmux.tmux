#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dayfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dayfox/nightfox_tmux.tmux
set -g mode-style "fg=#6080b0,bg=#AAACB3"
set -g message-style "fg=#6080b0,bg=#AAACB3"
set -g message-command-style "fg=#6080b0,bg=#AAACB3"
set -g pane-border-style "fg=#AAACB3"
set -g pane-active-border-style "fg=#6080b0"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#6080b0,bg=#D8D8D8"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#1d344f,bg=#6080b0,bold] #S #[fg=#6080b0,bg=#D8D8D8,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#D8D8D8,bg=#D8D8D8,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#D8D8D8] #{prefix_highlight} #[fg=#AAACB3,bg=#D8D8D8,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#AAACB3] %Y-%m-%d  %I:%M %p #[fg=#6080b0,bg=#AAACB3,nobold,nounderscore,noitalics]#[fg=#1d344f,bg=#6080b0,bold] #h "
setw -g window-status-activity-style "underscore,fg=#3F5269,bg=#D8D8D8"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#3F5269,bg=#D8D8D8"
setw -g window-status-format "#[fg=#D8D8D8,bg=#D8D8D8,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#D8D8D8,bg=#D8D8D8,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#D8D8D8,bg=#AAACB3,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#AAACB3,bold] #I  #W #F #[fg=#AAACB3,bg=#D8D8D8,nobold,nounderscore,noitalics]"
  