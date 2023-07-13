{ pkgs ? import ./nix/pkgs.nix {
    inherit system;
  }
, system ? builtins.currentSystem
}:
let
  github-label-sync = import ./nix/github-label-sync.nix {
    inherit pkgs;
    inherit system;
    nodejs = pkgs.nodejs;
  };
in
pkgs.mkShell {
  nativeBuildInputs = [
    github-label-sync."github-label-sync"
    pkgs.node2nix
    pkgs.jq
    pkgs.shellcheck
    pkgs.nixpkgs-fmt
    pkgs.dhall
    pkgs.dhall-json
  ];
}
