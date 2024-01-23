pandocrepo = https://github.com/kdheepak/panvimdoc
pandocdir = misc/panvimdoc
TEST_DIR = test/nightfox
PLENARY_DIR = test/plenary
PLENARY_URL = https://github.com/nvim-lua/plenary.nvim/

root_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY : all
all: extragen docgen test check

.PHONY : extragen
extragen:
	nvim --headless --clean -u misc/extra.lua

.PHONY : minimal
minimal:
	sed -i "s|\"EdenEast/nightfox.nvim\"|dir = \"${root_dir}\"|g" .github/minimal_init.lua
	nvim --clean -u .github/minimal_init.lua .github/minimal_init.lua

.PHONY : docgen
docgen: $(pandocdir)
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

.PHONY : test
test: $(PLENARY_DIR)
	nvim \
		--headless \
		--noplugin \
		-u test/minimal_init.vim \
		-c "PlenaryBustedDirectory $(TEST_DIR) { minimal_init = './test/minimal_init.vim' }"

$(PLENARY_DIR):
	git clone --depth=1 --no-single-branch $(PLENARY_URL) $(PLENARY_DIR)
	@rm -rf $(PLENARY_DIR)/.git

.PHONY : check
check :
	stylua --check lua/ test -f ./stylua.toml

.PHONY : fmt
fmt :
	stylua lua/ test/ -f ./stylua.toml
