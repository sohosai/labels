{ pkgs ? import ./pkgs.nix, system ? builtins.currentSystem, nodejs ? pkgs.nodejs }:
let
  nodePackages = import ./node2nix-composition.nix {
    inherit pkgs system;
    nodejs = nodejs;
  };
  newNodePackages = nodePackages // {
    github-label-sync = nodePackages.github-label-sync.override {
      buildInputs = [ pkgs.bash ];
    };
  };
in
  newNodePackages.github-label-sync
