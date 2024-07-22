# Changelog

## [3.10.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.9.3...v3.10.0) (2024-07-22)


### Features

* added custom styling for preprocessor macros ([ce0cdf8](https://github.com/EdenEast/nightfox.nvim/commit/ce0cdf8538c8c0b9c8fb2884d3d1090c8faf515d))
* **extra:** adding starship([#445](https://github.com/EdenEast/nightfox.nvim/issues/445)) ([932e417](https://github.com/EdenEast/nightfox.nvim/commit/932e417b032bac90baacccb32ebfc08207b018f7))
* **mini:** add new highlight groups ([#443](https://github.com/EdenEast/nightfox.nvim/issues/443)) ([1a87edd](https://github.com/EdenEast/nightfox.nvim/commit/1a87edd2eb9b5885882cb37d726aff26493ecd02))


### Bug Fixes

* add NotifyBackground missing highlight ([#422](https://github.com/EdenEast/nightfox.nvim/issues/422)) ([a4eb88b](https://github.com/EdenEast/nightfox.nvim/commit/a4eb88b2dad3fba5c2d87f82cd15dfb9de73913d))
* **zellij:** corrected text selection bg color ([#444](https://github.com/EdenEast/nightfox.nvim/issues/444)) ([7afb230](https://github.com/EdenEast/nightfox.nvim/commit/7afb230ccff4cad20a6cb778c49735074f915869))

## [3.9.3](https://github.com/EdenEast/nightfox.nvim/compare/v3.9.2...v3.9.3) (2024-01-26)


### Bug Fixes

* **treesitter:** missing [@variable](https://github.com/variable) fg key ([#415](https://github.com/EdenEast/nightfox.nvim/issues/415)) ([9aef9ff](https://github.com/EdenEast/nightfox.nvim/commit/9aef9ff0e41c43fe9d9dbb3cd5f1ce20e0d18cfa))

## [3.9.2](https://github.com/EdenEast/nightfox.nvim/compare/v3.9.1...v3.9.2) (2024-01-26)


### Bug Fixes

* add missing treesitter capture groups ([d4339e5](https://github.com/EdenEast/nightfox.nvim/commit/d4339e5b30a17b7130bbbc5de3bb6407239c9f9f)), closes [#412](https://github.com/EdenEast/nightfox.nvim/issues/412)
* link to correct Function highlight group ([#413](https://github.com/EdenEast/nightfox.nvim/issues/413)) ([20d2eb4](https://github.com/EdenEast/nightfox.nvim/commit/20d2eb42a22a87fdf4e859af1b0262d4f3b3602b))

## [3.9.1](https://github.com/EdenEast/nightfox.nvim/compare/v3.9.0...v3.9.1) (2024-01-24)


### Bug Fixes

* **treesitter:** '[@comment](https://github.com/comment).note' correctly set ([#408](https://github.com/EdenEast/nightfox.nvim/issues/408)) ([ec59253](https://github.com/EdenEast/nightfox.nvim/commit/ec59253e835ecce2a393dfeafeb1fa2b25d92312))

## [3.9.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.8.0...v3.9.0) (2024-01-24)


### Features

* **semanic_tokens:** add missing semanic tokens ([#406](https://github.com/EdenEast/nightfox.nvim/issues/406)) ([378ed7e](https://github.com/EdenEast/nightfox.nvim/commit/378ed7e671256f558d7364a5e5e986f45d9f330a))
* **treesitter:** follow upstream highlight groups ([#404](https://github.com/EdenEast/nightfox.nvim/issues/404)) ([1e0dbb4](https://github.com/EdenEast/nightfox.nvim/commit/1e0dbb4abf1bbb57a3a03f83e5b8b6515ea1507e))


### Bug Fixes

* **treesitter:** link [@operator](https://github.com/operator) to operator ([ae41992](https://github.com/EdenEast/nightfox.nvim/commit/ae41992917d989177aff351bd6e66929de386f35))

## [3.8.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.7.1...v3.8.0) (2024-01-11)


### Features

* **extra:** add ghostty support ([#398](https://github.com/EdenEast/nightfox.nvim/issues/398)) ([34542a4](https://github.com/EdenEast/nightfox.nvim/commit/34542a433e5bd03c27b6cd4570849d9cde59acf7))
* **extras:** add base16 scheme template generated base16 schemes. ([#354](https://github.com/EdenEast/nightfox.nvim/issues/354)) ([ca21c15](https://github.com/EdenEast/nightfox.nvim/commit/ca21c15589d9b71c7e1ad130273ad7819c6636d3))


### Bug Fixes

* **extra:** alacritty config from yml to toml ([#400](https://github.com/EdenEast/nightfox.nvim/issues/400)) ([83bad15](https://github.com/EdenEast/nightfox.nvim/commit/83bad1576d94251d460b2cc5635a15dd73cf6f65))
* **extra:** fix typo from forground to foreground ([#401](https://github.com/EdenEast/nightfox.nvim/issues/401)) ([1e65031](https://github.com/EdenEast/nightfox.nvim/commit/1e650316680a777fb50e4ab35d82ecf32da485b8))
* **whichkey:** link WhichKeyFloat to NormalFloat([#391](https://github.com/EdenEast/nightfox.nvim/issues/391)) ([281f307](https://github.com/EdenEast/nightfox.nvim/commit/281f30716cbbf57a8ef5aef0f381b1532f25cfac))

## [3.7.1](https://github.com/EdenEast/nightfox.nvim/compare/v3.7.0...v3.7.1) (2023-12-21)


### Bug Fixes

* **group:** Fix typo from WinSeperator to WinSeparator ([3f98459](https://github.com/EdenEast/nightfox.nvim/commit/3f984596e6c30351470656279cde86433d574d51)), closes [#387](https://github.com/EdenEast/nightfox.nvim/issues/387)

## [3.7.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.6.1...v3.7.0) (2023-12-14)


### Features

* add new DiagnosticOk highlight ([#378](https://github.com/EdenEast/nightfox.nvim/issues/378)) ([fe2fc7b](https://github.com/EdenEast/nightfox.nvim/commit/fe2fc7b93d66349eff2c5baa6cec922ee3958f56))


### Bug Fixes

* **groups:** differentiate between active button with lazy.nvim ([#383](https://github.com/EdenEast/nightfox.nvim/issues/383)) ([6a6076b](https://github.com/EdenEast/nightfox.nvim/commit/6a6076bd678f825ffbe16ec97807793c3167f1a7))
* **group:** WinSeperator defined along side VertSplit ([#387](https://github.com/EdenEast/nightfox.nvim/issues/387)) ([de1bd3a](https://github.com/EdenEast/nightfox.nvim/commit/de1bd3a7c48d37f3c7ccecb1980c4009fa4fb791))

## [3.6.1](https://github.com/EdenEast/nightfox.nvim/compare/v3.6.0...v3.6.1) (2023-09-20)


### Bug Fixes

* **vim:** loadstring (5.1) vs load (5.2&gt;=) ([#375](https://github.com/EdenEast/nightfox.nvim/issues/375)) ([4ab4dda](https://github.com/EdenEast/nightfox.nvim/commit/4ab4ddae66f21b57251b03fd74437c6e2de9f2b1))

## [3.6.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.5.1...v3.6.0) (2023-09-19)


### Features

* **modules:** add indent_blankline ([#347](https://github.com/EdenEast/nightfox.nvim/issues/347)) ([5472a3e](https://github.com/EdenEast/nightfox.nvim/commit/5472a3e2bae6f381b603cd7998fc131f8134755c))


### Bug Fixes

* **compiler:** add file permission error ([#368](https://github.com/EdenEast/nightfox.nvim/issues/368)) ([e886e39](https://github.com/EdenEast/nightfox.nvim/commit/e886e39e592e89f316536a6f070365a9d88901c9))
* **indent_blankline:** style wasn't set correctly ([#351](https://github.com/EdenEast/nightfox.nvim/issues/351)) ([77aa745](https://github.com/EdenEast/nightfox.nvim/commit/77aa7458d2b725c2d9ff55a18befe1b891ac473e))
* **syntax:** Fix highlight for json labels ([#363](https://github.com/EdenEast/nightfox.nvim/issues/363)) ([a48f6d9](https://github.com/EdenEast/nightfox.nvim/commit/a48f6d9a0273101df76eb25d2f5477baa277f935))
* **vim:** resolve deprecation of nested `[[` ([#373](https://github.com/EdenEast/nightfox.nvim/issues/373)) ([e45f802](https://github.com/EdenEast/nightfox.nvim/commit/e45f80288c0af7f30d785676a0d89c9dcc3e390a))

## [3.5.1](https://github.com/EdenEast/nightfox.nvim/compare/v3.5.0...v3.5.1) (2023-04-21)


### Bug Fixes

* **extra:** switch from fg3 to fg2 for white ([e54427a](https://github.com/EdenEast/nightfox.nvim/commit/e54427a1bfea55c9ab0c21ac7e9d07b22156d0f0))
* **extra:** zellij black and white set to bg3/fg3 ([#336](https://github.com/EdenEast/nightfox.nvim/issues/336)) ([409d646](https://github.com/EdenEast/nightfox.nvim/commit/409d646bd15989241e0a71e4da513434c49cad10))
* **module:** remove `TS` prefix from cmp links ([669b0ce](https://github.com/EdenEast/nightfox.nvim/commit/669b0ce7d02d511c06ceae6201392dc29906dfc0))

## [3.5.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.4.0...v3.5.0) (2023-04-11)


### Features

* **ci:** add github action to autogenerate extra files ([#327](https://github.com/EdenEast/nightfox.nvim/issues/327)) ([727a0ea](https://github.com/EdenEast/nightfox.nvim/commit/727a0ea9d2dde7f8cfd4ae0f2e5570c365638227))


### Bug Fixes

* **cache:** move setup guard before load call ([#331](https://github.com/EdenEast/nightfox.nvim/issues/331)) ([88182d4](https://github.com/EdenEast/nightfox.nvim/commit/88182d48373be8ff1933bfd5fabc4c4aa55bf726))
* **release:** rename "branch" -&gt; "branches" ([#328](https://github.com/EdenEast/nightfox.nvim/issues/328)) ([b9a3385](https://github.com/EdenEast/nightfox.nvim/commit/b9a3385d4814d7c8aa6a9a68f42c6a8bc05282f4))

## [3.4.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.3.0...v3.4.0) (2023-04-04)


### Features

* add new lsp semantic token highlight groups ([#318](https://github.com/EdenEast/nightfox.nvim/issues/318)) ([a8044b0](https://github.com/EdenEast/nightfox.nvim/commit/a8044b084e0114609ec2c59cc4fa94c709a457d4))
* add vim/neovim test on ubuntu/macos/windows ([#320](https://github.com/EdenEast/nightfox.nvim/issues/320)) ([8bb6713](https://github.com/EdenEast/nightfox.nvim/commit/8bb6713c56458aae339575b205234d820ec2046a))
* **module:** add alpha support ([4b73c9d](https://github.com/EdenEast/nightfox.nvim/commit/4b73c9d0995eb1a43e284534b97a543ca21c5c77))
* **semantic_tokens:** add injected highlights ([#321](https://github.com/EdenEast/nightfox.nvim/issues/321)) ([3802464](https://github.com/EdenEast/nightfox.nvim/commit/380246446a359f7faf2f0ccb865658ec0a295bd0))
* **semantic_tokens:** link default library to function builtin ([53cdaa5](https://github.com/EdenEast/nightfox.nvim/commit/53cdaa583138698f4a0a4a9d2abaf761c8960407))


### Bug Fixes

* **kitty:** add "cursor_text_color" parameter ([#325](https://github.com/EdenEast/nightfox.nvim/issues/325)) ([4a291f8](https://github.com/EdenEast/nightfox.nvim/commit/4a291f83297b42026fdbe245378d579f33c0b106))
* **load:** add setup guard ([9b6e3a4](https://github.com/EdenEast/nightfox.nvim/commit/9b6e3a470ac12fb2ce3de2162bb80bd0b47736f6))
* **setup:** ORIG_HEAD doesn't exist in Detached HEAD ([d4a615a](https://github.com/EdenEast/nightfox.nvim/commit/d4a615a015451e12b7f13886aa25512a02bd5cab))

## [3.3.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.2.0...v3.3.0) (2023-02-17)


### Features

* **extra:** add zellij theme file ([789b302](https://github.com/EdenEast/nightfox.nvim/commit/789b3029d5058e925436ac29eb0521aa4e042b36))


### Bug Fixes

* **compile:** correct call to set background for vim ([5aeb0e7](https://github.com/EdenEast/nightfox.nvim/commit/5aeb0e730755b3007029b51dda094d4e0e6e9291))


### Performance Improvements

* **compile:** remove table overhead for better performance ([#312](https://github.com/EdenEast/nightfox.nvim/issues/312)) ([4cf5680](https://github.com/EdenEast/nightfox.nvim/commit/4cf56808775d4f2d4c83fa01401ff2c5c509484d))
* **compiler:** remove `require` call to write compiled file ([#311](https://github.com/EdenEast/nightfox.nvim/issues/311)) ([14489df](https://github.com/EdenEast/nightfox.nvim/commit/14489dfa8c4241a919845ed9101fae074234f35b))

## [3.2.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.1.0...v3.2.0) (2023-01-24)


### Features

* add support for ts-rainbow2 ([#301](https://github.com/EdenEast/nightfox.nvim/issues/301)) ([97e66df](https://github.com/EdenEast/nightfox.nvim/commit/97e66dfaaecdc81f1dd7da00f8d4a6033f3bf6b2))
* **cvd:** support colorblind mode with daltonization ([#281](https://github.com/EdenEast/nightfox.nvim/issues/281)) ([f093297](https://github.com/EdenEast/nightfox.nvim/commit/f093297145e917f7ae4d0e09fc9c07ac40620361))


### Bug Fixes

* **transparent:** remove `NormalNC` link to `Normal` ([773fd00](https://github.com/EdenEast/nightfox.nvim/commit/773fd00919fdd737569906948a9a527fd0127465))

## [3.1.0](https://github.com/EdenEast/nightfox.nvim/compare/v3.0.0...v3.1.0) (2023-01-18)


### Features

* **color:** add WCAG AA contrast validation ([12e0ca7](https://github.com/EdenEast/nightfox.nvim/commit/12e0ca70e978f58318e7f0279bb7b243ababbd49))
* Nushell Extra Theme Config ([#298](https://github.com/EdenEast/nightfox.nvim/issues/298)) ([23a678f](https://github.com/EdenEast/nightfox.nvim/commit/23a678f47722801f70fe64df39a1fa29f6abf297))


### Bug Fixes

* **module:** use treesitter links only if module enabled ([#296](https://github.com/EdenEast/nightfox.nvim/issues/296)) ([07332c1](https://github.com/EdenEast/nightfox.nvim/commit/07332c1c62aba0c8f80ad677d44ca15009353bde))

## [3.0.0](https://github.com/EdenEast/nightfox.nvim/compare/v2.1.0...v3.0.0) (2023-01-05)


### ⚠ BREAKING CHANGES

* **palette:** rework dayfox ([#285](https://github.com/EdenEast/nightfox.nvim/issues/285))

### Features

* **module:** add highlight support for nvim-navic ([#283](https://github.com/EdenEast/nightfox.nvim/issues/283)) ([0f94892](https://github.com/EdenEast/nightfox.nvim/commit/0f948925ec435f2fa115522a991ac84efed0045a))


### Bug Fixes

* **module:** use correct group names for illuminate.vim ([#286](https://github.com/EdenEast/nightfox.nvim/issues/286)) ([c88664b](https://github.com/EdenEast/nightfox.nvim/commit/c88664b18e593319aea1ded731dd252d4f9e0f9a))


### Code Refactoring

* **palette:** rework dayfox ([#285](https://github.com/EdenEast/nightfox.nvim/issues/285)) ([4f6eff4](https://github.com/EdenEast/nightfox.nvim/commit/4f6eff46463e248c3bd952a82fc7250dc87b91d8))

## [2.1.0](https://github.com/EdenEast/nightfox.nvim/compare/v2.0.0...v2.1.0) (2022-12-27)


### Features

* **compiler:** write compile lua file if debug set ([f32eef4](https://github.com/EdenEast/nightfox.nvim/commit/f32eef468a98e73d5a87daa8db873dd1a94e021e))
* **module:** add signify support ([#279](https://github.com/EdenEast/nightfox.nvim/issues/279)) ([07174bf](https://github.com/EdenEast/nightfox.nvim/commit/07174bfe0ad15a4c25ef908872904edb09069e94))


### Bug Fixes

* **log:** agnostic log with vim.notify ([b4aa477](https://github.com/EdenEast/nightfox.nvim/commit/b4aa4774fd9bdfa9ce64a0461ad75ea8dd7cc557))
* **treesitter:** correct yaml field ([#276](https://github.com/EdenEast/nightfox.nvim/issues/276)) ([d2e0888](https://github.com/EdenEast/nightfox.nvim/commit/d2e088812abba833d1e94f9fd1eea476cfda6a1f))


### Performance Improvements

* **setup:** cache only opt table passed to setup ([ae5df67](https://github.com/EdenEast/nightfox.nvim/commit/ae5df67b091b8c0198975e6d776e65e36c92c09e))
