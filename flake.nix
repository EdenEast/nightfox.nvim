{
  description = "A highly customizable theme for vim and neovim";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
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

        coloraide = with pkgs; python3.pkgs.buildPythonPackage rec {
          pname = "coloraide";
          version = "4.0";
          format = "pyproject";

          src = pkgs.fetchFromGitHub {
            owner = "facelessuser";
            repo = "${pname}";
            rev = "${version}";
            sha256 = "sha256-IkKowqSmUhomJavTqyd2iNcClsntr4Ro5ckgK6GrQ0M=";
          };

          nativeBuildInputs = with python3.pkgs; [
            hatchling
          ];
        };

      in
      rec {
        devShells = {
          default = pkgs.mkShell {
            name = "nightfox";
            packages = with pkgs; [
              pandoc
              gnumake
              stylua
              # vim-lua
              # lua
            ];
          };
          python = pkgs.mkShell {
            name = "python";
            buildInputs = [ pkgs.python3 coloraide ];
          };
        };
      });
}



