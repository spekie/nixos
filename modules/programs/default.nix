{ config, pkgs, ... }:

{
  imports = [
    ./xdg.nix
    ./kitty.nix
    ./fish.nix
    ./bash.nix
    ./lf.nix
    ./firefox.nix
    ./mpv.nix
    ./yt.nix
    ./vim.nix
    ./steam.nix
  ];
}
