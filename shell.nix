let
  pkgs = import ./nix/nixpkgs {};

  deriv = pkgs.agda.mkDerivation (self: {
    name = "agda-sandbox";

    buildDepends = [
      pkgs.AgdaStdlib
    ];
  });
in
  deriv.env.overrideAttrs (old: rec {
    buildInputs = old.buildInputs ++ [
      (pkgs.haskellPackages.ghcWithPackages (pkgs: with pkgs; [
        ieee754
        Agda
      ]))
      pkgs.ncurses
    ];
    shellHook = builtins.readFile ./nix/bash-prompt.sh;
  })
