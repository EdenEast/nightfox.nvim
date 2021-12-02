# Nightfox Color Palette
# Style: hybridfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/hybridfox/nightfox_fish.fish
set -l foreground c5c8c6
set -l selection 2f3235
set -l comment 707880
set -l red cc6666
set -l orange de935f
set -l yellow f0c674
set -l green b5bd68
set -l purple b294bb
set -l cyan 8abeb7
set -l pink cf90e0

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

  