{ config, pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./system.nix
    ./paths.nix
  ];
}
