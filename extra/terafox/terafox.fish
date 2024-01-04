# Nightfox Color Palette
# Style: terafox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/terafox/terafox.fish
set -l foreground e6eaea
set -l selection 293e40
set -l comment 6d7f8b
set -l red e85c51
set -l orange ff8349
set -l yellow fda47f
set -l green 7aa4a1
set -l purple ad5c7c
set -l cyan a1cdd8
set -l pink cb7985

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
