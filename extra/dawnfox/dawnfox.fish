# Nightfox Color Palette
# Style: dawnfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/dawnfox/dawnfox.fish
set -l foreground 575279
set -l selection d0d8d8
set -l comment 9893a5
set -l red b4637a
set -l orange d7827e
set -l yellow ea9d34
set -l green 618774
set -l purple 907aa9
set -l cyan 56949f
set -l pink d685af

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
