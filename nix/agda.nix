let
  pkgs = import ./nixpkgs {};

  nixexpr = pkgs.fetchgit {
    url = "https://github.com/srdqty/nix-agda-with-packages";
    rev = "f109205c74490f7e5308d39c3beab8ba86253eab";
    sha256 = "1fsjxy7i2l7px43hgz1vyzbqmvlgclajiirp0fgpi2wzv6m3vzha";
  };

in
  import "${nixexpr}" {
    Agda = pkgs.haskellPackages.Agda;
    fetchgit = pkgs.fetchgit;
    ghcWithPackages = pkgs.haskellPackages.ghcWithPackages;
    glibcLocales = pkgs.glibcLocales;
    makeWrapper = pkgs.makeWrapper;
    stdenv = pkgs.stdenv;
    symlinkJoin = pkgs.symlinkJoin;
  }