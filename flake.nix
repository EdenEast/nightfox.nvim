{
  description = "Rust application and setup env";
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
          ];
        };

      in
      rec {
        inherit devShell;
      });
}

