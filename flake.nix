{
  description = "A highly customizable theme for vim and neovim";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";

        vim-lua = pkgs.vim_configurable.override {
          luaSupport = true;
        };

        devShell = pkgs.mkShell {
          name = "nightfox";
          packages = with pkgs; [
            pandoc
            gnumake
            stylua
            vim-lua
            # luajit
            lua5_4
            # lua5_3
            # lua5_2
            # lua5_1
          ];
        };

      in
      rec {
        inherit devShell;
      });
}

