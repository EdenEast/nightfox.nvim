#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: duskfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/eppzfox/nightfox_tmux.tmux
set -g mode-style "fg=#6173d1,bg=#B9B9B5"
set -g message-style "fg=#6173d1,bg=#B9B9B5"
set -g message-command-style "fg=#6173d1,bg=#B9B9B5"
set -g pane-border-style "fg=#B9B9B5"
set -g pane-active-border-style "fg=#6173d1"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#6173d1,bg=#192330"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#2b2d35,bg=#6173d1,bold] #S #[fg=#6173d1,bg=#192330,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#192330,bg=#192330,nobold,nounderscore,noitalics]#[fg=#6173d1,bg=#192330] #{prefix_highlight} #[fg=#B9B9B5,bg=#192330,nobold,nounderscore,noitalics]#[fg=#6173d1,bg=#B9B9B5] %Y-%m-%d  %I:%M %p #[fg=#6173d1,bg=#B9B9B5,nobold,nounderscore,noitalics]#[fg=#2b2d35,bg=#6173d1,bold] #h "
setw -g window-status-activity-style "underscore,fg=#71839b,bg=#192330"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#71839b,bg=#192330"
setw -g window-status-format "#[fg=#192330,bg=#192330,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#192330,bg=#192330,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#192330,bg=#B9B9B5,nobold,nounderscore,noitalics]#[fg=#6173d1,bg=#B9B9B5,bold] #I  #W #F #[fg=#B9B9B5,bg=#192330,nobold,nounderscore,noitalics]"
