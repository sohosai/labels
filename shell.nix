{ pkgs ? import ./nix/pkgs.nix {
  inherit system;
}, system ? builtins.currentSystem }:
let
  github-label-setup = import ./nix/github-label-setup.nix {
    inherit pkgs;
    inherit system;
    nodejs = pkgs.nodejs;
  };
in
pkgs.mkShell {
  nativeBuildInputs = [
    github-label-setup."@azu/github-label-setup"
    pkgs.node2nix
  ];
}
