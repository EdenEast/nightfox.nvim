#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dayfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dayfox/nightfox_tmux.tmux
set -g mode-style "fg=#4d688e,bg=#233f5e"
set -g message-style "fg=#4d688e,bg=#233f5e"
set -g message-command-style "fg=#4d688e,bg=#233f5e"
set -g pane-border-style "fg=#233f5e"
set -g pane-active-border-style "fg=#4d688e"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#4d688e,bg=#dbdbdb"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#1d344f,bg=#4d688e,bold] #S #[fg=#4d688e,bg=#dbdbdb,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#dbdbdb,bg=#dbdbdb,nobold,nounderscore,noitalics]#[fg=#4d688e,bg=#dbdbdb] #{prefix_highlight} #[fg=#233f5e,bg=#dbdbdb,nobold,nounderscore,noitalics]#[fg=#4d688e,bg=#233f5e] %Y-%m-%d  %I:%M %p #[fg=#4d688e,bg=#233f5e,nobold,nounderscore,noitalics]#[fg=#1d344f,bg=#4d688e,bold] #h "
setw -g window-status-activity-style "underscore,fg=#2e537d,bg=#dbdbdb"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#2e537d,bg=#dbdbdb"
setw -g window-status-format "#[fg=#dbdbdb,bg=#dbdbdb,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#dbdbdb,bg=#dbdbdb,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#dbdbdb,bg=#233f5e,nobold,nounderscore,noitalics]#[fg=#4d688e,bg=#233f5e,bold] #I  #W #F #[fg=#233f5e,bg=#dbdbdb,nobold,nounderscore,noitalics]"
