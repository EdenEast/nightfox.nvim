# Nightfox Color Palette
# Style: dayfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dayfox/dayfox.fish
set -l foreground 3d2b5a
set -l selection e7d2be
set -l comment 837a72
set -l red a5222f
set -l orange 955f61
set -l yellow ac5402
set -l green 396847
set -l purple 6e33ce
set -l cyan 287980
set -l pink a440b5

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
