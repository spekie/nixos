{ config, pkgs, ... }:

{
  imports = [
    ./kitty.nix
    ./fish.nix
    ./bash.nix
    ./lf.nix
    ./firefox.nix
    ./mpv.nix
    ./yt-dlp.nix
    ./xdg.nix
    ./vim.nix
    ./steam.nix
  ];

  environment.systemPackages = with pkgs; [
    imv
    keepassxc
    qbittorrent
    vscodium
  ];
}
