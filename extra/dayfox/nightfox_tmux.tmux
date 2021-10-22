#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: dayfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dayfox/nightfox_tmux.tmux
set -g mode-style "fg=#6080b0,bg=#B9BCC2"
set -g message-style "fg=#6080b0,bg=#B9BCC2"
set -g message-command-style "fg=#6080b0,bg=#B9BCC2"
set -g pane-border-style "fg=#B9BCC2"
set -g pane-active-border-style "fg=#6080b0"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#6080b0,bg=#D5DADE"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#1d344f,bg=#6080b0,bold] #S #[fg=#6080b0,bg=#D5DADE,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#D5DADE,bg=#D5DADE,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#D5DADE] #{prefix_highlight} #[fg=#B9BCC2,bg=#D5DADE,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#B9BCC2] %Y-%m-%d  %I:%M %p #[fg=#6080b0,bg=#B9BCC2,nobold,nounderscore,noitalics]#[fg=#1d344f,bg=#6080b0,bold] #h "
setw -g window-status-activity-style "underscore,fg=#3F5269,bg=#D5DADE"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#3F5269,bg=#D5DADE"
setw -g window-status-format "#[fg=#D5DADE,bg=#D5DADE,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#D5DADE,bg=#D5DADE,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#D5DADE,bg=#B9BCC2,nobold,nounderscore,noitalics]#[fg=#6080b0,bg=#B9BCC2,bold] #I  #W #F #[fg=#B9BCC2,bg=#D5DADE,nobold,nounderscore,noitalics]"
  