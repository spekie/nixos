{ config, pkgs, ... }:

{
  imports = [
    ./colors.nix
    ./system.nix
    ./paths.nix
  ];
}
