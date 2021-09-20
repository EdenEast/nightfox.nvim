# Nightfox Color Palette
# Style: dayfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dayfox/nightfox_fish.fish
set -l foreground 1D344F
set -l selection E2E3E5
set -l comment 7F848E
set -l red c98093
set -l orange EE896D
set -l yellow CE8D52
set -l green 7ca198
set -l purple 8e6f98
set -l cyan 6ca8cf
set -l pink D685AF

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

  