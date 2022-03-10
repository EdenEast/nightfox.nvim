pandocrepo = https://github.com/kdheepak/panvimdoc
pandocdir = doc/panvimdoc


docgen: | $(pandocdir)
	@pandoc \
		--metadata=project:nightfox \
		--metadata="description:A highly customizable theme for vim and neovim" \
		--lua-filter tmp/panvimdoc/scripts/skip-blocks.lua \
		--lua-filter tmp/panvimdoc/scripts/include-files.lua \
		-t tmp/panvimdoc/scripts/panvimdoc.lua \
		usage.md \
		-o doc/nightfox.txt

$(pandocdir):
	mkdir -p tmp
	git clone $(pandocrepo) $(pandocdir)
