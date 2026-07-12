{ config, pkgs, ... }:

{
  imports = [
    ./xdg.nix
    ./kitty.nix
    ./fish.nix
    ./firefox.nix
    ./mpv.nix
    ./git.nix
    ./steam.nix
  ];
}
