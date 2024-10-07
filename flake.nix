{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
      imports = [ inputs.haskell-flake.flakeModule ];
      perSystem = { self', system, lib, config, pkgs, ... }: {
        haskellProjects.default = {
          devShell = { hlsCheck.enable = true; };

          # What should haskell-flake add to flake outputs?
          autoWire = [ "packages" "apps" "checks" ]; # Wire all but the devShell
        };

        devShells.default = pkgs.mkShell {
          name = "my-project custom development shell";
          inputsFrom = [ config.haskellProjects.default.outputs.devShell ];
          nativeBuildInputs = with pkgs; [
            haskell-language-server
            llvmPackages.clang
            bear
            haskellPackages.hoogle
            haskellPackages.fast-tags
            haskellPackages.haskell-debug-adapter
            haskellPackages.haskell-dap
            haskellPackages.ghci-dap
            haskellPackages.threadscope
            haskellPackages.c2hs
            haskellPackages.markdown-unlit # Literate Haskell support for Markdown
          ];
        };
      };
    };
}
