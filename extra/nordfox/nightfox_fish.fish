# Nightfox Color Palette
# Style: nordfox
set -l foreground b9bfca
set -l selection 3e4655
set -l comment 60728A
set -l red BF616A
set -l orange C9826B
set -l yellow EBCB8B
set -l green A3BE8C
set -l purple ${purple}
set -l cyan 88C0D0
set -l pink BF88BC

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

  