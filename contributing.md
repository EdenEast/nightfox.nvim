# Contributing

🎉 First off, thanks for taking the time to contribute! 🎉

## Guidelines

The following is a set of guidelines for contributing to this project.

- Use the `.editorconfig` file in your editor. This maintains a consistent style. Refer to the [website](https://editorconfig.org/) for more info.
- Format code using [stylua](https://github.com/johnnymorganz/stylua). This keeps everything consistent.
  - Make sure that the project's `stylua.toml` file is used for stylua settings.
- Run `make extragen` to update `extra`'s folder with changes.
  - If changes are made to palettes
  - If adding a new extra template add it to the list in `misc/extra.lua`
- Run `make docgen` if changes are made to `usage.md`.
  - Requires `pandoc` to be installed. If using `nix` there is a `devShell` in the `flake.nix`
- Run `make all` to execute the above make recipes.

## Recommendations

- Create a topic branch on your fork for your specific PR.
- Consider using [conventional commits][concom] rules for creating explicit and meaningful commit messages.
- If your change creates a breaking change for others make sure that in your commit you have a line `BREAKING CHANGE:`
  that explains the breaking change.
- If it's your first time contributing to a project then read [About pull requests][about-pr] on Github's docs.

[concom]: https://www.conventionalcommits.org/en/v1.0.0/
[about-pr]: https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests

## License

Any contribution will be published under the same licensing terms as the project itself.
