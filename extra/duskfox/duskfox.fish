# Nightfox Color Palette
# Style: duskfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/duskfox/duskfox.fish
set -l foreground e0def4
set -l selection 433c59
set -l comment 817c9c
set -l red eb6f92
set -l orange ea9a97
set -l yellow f6c177
set -l green a3be8c
set -l purple c4a7e7
set -l cyan 9ccfd8
set -l pink eb98c3

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
