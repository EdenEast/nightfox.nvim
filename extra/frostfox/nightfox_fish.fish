# Nightfox Color Palette
# Style: frostfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/frostfox/nightfox_fish.fish
set -l foreground fffadf
set -l selection 364765
set -l comment 7f848e
set -l red ff8089
set -l orange ffa500
set -l yellow fff38d
set -l green 56e2c4
set -l purple c2acff
set -l cyan 79e0ff
set -l pink f5acff

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
