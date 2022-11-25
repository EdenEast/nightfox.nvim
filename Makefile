pandocrepo = https://github.com/kdheepak/panvimdoc
pandocdir = misc/panvimdoc
fpfile = ./lua/nightfox/fingerprint.lua

root_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
fp := $(shell git ls-files -- './lua/*' './autoload/*' './colors/*' './plugin/*' | grep -v 'fingerprint.lua' | git hash-object --stdin-paths | git hash-object --stdin)

all: extragen docgen fingerprint

fingerprint:
	echo "return [[$(fp)]]" > $(fpfile)

extragen:
	nvim --headless --clean -u misc/extra.lua

minimal:
	sed -i "s|EdenEast/nightfox.nvim|${root_dir}|g" minimal_init.lua
	nvim --clean -u minimal_init.lua minimal_init.lua

docgen: | $(pandocdir)
	@pandoc \
		--metadata=project:nightfox \
		--metadata="description:A highly customizable theme for vim and neovim" \
		--lua-filter misc/panvimdoc/scripts/skip-blocks.lua \
		--lua-filter misc/panvimdoc/scripts/include-files.lua \
		-t misc/panvimdoc/scripts/panvimdoc.lua \
		usage.md \
		-o doc/nightfox.txt

$(pandocdir):
	git clone --depth=1 --no-single-branch $(pandocrepo) $(pandocdir)
	@rm -rf doc/panvimdoc/.git
