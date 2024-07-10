local template = require("nightfox.util.template")

local M = {}

function M.generate(spec, _)
  local content = [[
# [metadata]
# name = "${palette.meta.name}"
# author = "wjohnsto"
# origin_url = "https://github.com/EdenEast/nightfox.nvim"

"$schema" = "https://starship.rs/config-schema.json"

format = """
[░▒▓](os_bg)\
$os\
[](bg:dir_bg fg:os_bg)\
$directory\
[](fg:dir_bg bg:git_bg)\
$git_branch\
$git_status\
[](fg:git_bg bg:lang_bg)\
$nodejs\
$rust\
$golang\
[](fg:lang_bg bg:background)\
\n$character"""

palette = "${palette.meta.name}"

[palettes.${palette.meta.name}]
red = "${palette.red}"
green = "${palette.green}"
purple = "${palette.magenta}"
yellow = "${palette.yellow}"
os_bg = "${fg3}"
os_fg = "${bg1}"
dir_bg = "${palette.green}"
dir_fg = "${bg1}"
git_bg = "${palette.yellow}"
git_fg = "${bg1}"
lang_bg = "${palette.blue}"
lang_fg = "${bg1}"

[os]
disabled = false
style = "bg:os_bg fg:os_fg"

[os.symbols]
Windows = "󰍲"
Ubuntu = "󰕈"
SUSE = ""
Raspbian = "󰐿"
Mint = " 󰣭 "
Macos = "󰀵"
Manjaro = ""
Linux = "󰌽"
Gentoo = "󰣨"
Fedora = "󰣛"
Alpine = ""
Amazon = ""
Android = ""
Arch = "󰣇"
Artix = "󰣇"
CentOS = ""
Debian = "󰣚"
Redhat = "󱄛"
RedHatEnterprise = "󱄛"

[directory]
style = "fg:dir_fg bg:dir_bg"
format = "[ $path ]($style)"
truncation_length = 3
truncation_symbol = "…/"

[directory.substitutions]
"Documents" = "󰈙 "
"Downloads" = " "
"Music" = " "
"Pictures" = " "
"src" = " "

[git_branch]
symbol = ""
style = "bg:git_bg"
format = '[[ $symbol $branch ](fg:git_fg bg:git_bg)]($style)'

[git_status]
style = "bg:git_bg"
format = '[[($all_status$ahead_behind )](fg:git_fg bg:git_bg)]($style)'

[nodejs]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[c]
symbol = " "
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[rust]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[golang]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[php]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[java]
symbol = " "
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[kotlin]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[haskell]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[python]
symbol = ""
style = "bg:lang_bg"
format = '[[ $symbol( $version) ](fg:lang_fg bg:lang_bg)]($style)'

[character]
disabled = false
success_symbol = '[](bold fg:green)'
error_symbol = '[](bold fg:red)'
vimcmd_symbol = '[](bold fg:green)'
vimcmd_replace_one_symbol = '[](bold fg:purple)'
vimcmd_replace_symbol = '[](bold fg:purple)'
vimcmd_visual_symbol = '[](bold fg:yellow)'

]]

  return template.parse_template_str(content, spec)
end

return M
