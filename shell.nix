let
  pkgs = import ./nix/nixpkgs {};

  agda = import ./nix/agda.nix;
in
  pkgs.stdenv.mkDerivation {
    name = "agda-sandbox";

    buildInputs = [
      pkgs.ncurses # Needed by the bash-prompt.sh script
      (agda.agdaWithPackages (pkgs: with pkgs; [ial agda-stdlib]))
    ];

    shellHook = builtins.readFile ./nix/bash-prompt.sh;
  }
