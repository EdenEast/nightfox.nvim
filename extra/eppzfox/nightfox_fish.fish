# Nightfox Color Palette
# Style: duskfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/eppzfox/nightfox_fish.fish
set -l foreground A6A6A2
set -l selection 2b3b51
set -l comment 817c9c
set -l red b6776b
set -l orange d88e78
set -l yellow d9c679
set -l green 4ca585
set -l purple cea37f
set -l cyan 60c1d2
set -l pink 588e9a

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
