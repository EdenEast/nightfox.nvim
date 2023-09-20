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
        lua = pkgs.lua5_1;
        # lua = pkgs.lua5_2;
        # lua = pkgs.lua5_3;
        # lua = pkgs.lua5_4;
        # lua = pkgs.luajit;

        vim-lua = pkgs.vim_configurable.override {
          inherit lua;
          luaSupport = true;
        };

        devShell = pkgs.mkShell {
          name = "nightfox";
          packages = with pkgs; [
            pandoc
            gnumake
            stylua
            # vim-lua
            # lua
          ];
        };

      in
      rec {
        inherit devShell;
      });
}

