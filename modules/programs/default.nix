{ config, pkgs, ... }:

{
  imports = [
    ./kitty.nix
    ./fish.nix
    ./bash.nix
    ./lf.nix
    ./firefox.nix
    ./mpv.nix
    ./mpd.nix
    ./xdg.nix
    ./vim.nix
    ./umu-launcher.nix
  ];

  environment.systemPackages = with pkgs; [
    imv
    zathura
    keepassxc
    qbittorrent
    vscodium
    mkvtoolnix-cli
  ];
}
