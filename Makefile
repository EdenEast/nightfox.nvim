pandocrepo = https://github.com/kdheepak/panvimdoc
pandocdir = doc/panvimdoc

all: compile extra docgen

compile:
	nvim --headless --clean -u misc/precompile.lua

extra:
	nvim --headless --clean -u misc/extra.lua

docgen: | $(pandocdir)
	@pandoc \
		--metadata=project:nightfox \
		--metadata="description:A highly customizable theme for vim and neovim" \
		--lua-filter doc/panvimdoc/scripts/skip-blocks.lua \
		--lua-filter doc/panvimdoc/scripts/include-files.lua \
		-t doc/panvimdoc/scripts/panvimdoc.lua \
		usage.md \
		-o doc/nightfox.txt

$(pandocdir):
	git clone --depth=1 --no-single-branch $(pandocrepo) $(pandocdir)
	@rm -rf doc/panvimdoc/.git
