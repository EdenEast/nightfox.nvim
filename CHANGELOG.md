# Changelog

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
