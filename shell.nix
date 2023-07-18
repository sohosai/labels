{ pkgs ? import ./nix/pkgs.nix {
    inherit system;
  }
, system ? builtins.currentSystem
}:
let
  github-label-sync = pkgs.callPackage ./nix/github-label-sync.nix { };
in
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    github-label-sync
    node2nix
    jq
    shellcheck
    nixpkgs-fmt
    dhall
    dhall-json
    actionlint
  ];
}
