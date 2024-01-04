# Nightfox Color Palette
# Style: nordfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/nordfox/nordfox.fish
set -l foreground cdcecf
set -l selection 3e4a5b
set -l comment 60728a
set -l red bf616a
set -l orange c9826b
set -l yellow ebcb8b
set -l green a3be8c
set -l purple b48ead
set -l cyan 88c0d0
set -l pink bf88bc

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
