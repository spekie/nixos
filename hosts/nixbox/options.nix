{ config, lib, pkgs, ... }:

{
  imports = [
    ../../options
    ../../modules

    ../../modules/sway

    ../../modules/programs/kitty.nix
    ../../modules/programs/bash.nix
    ../../modules/programs/lf.nix
    ../../modules/programs/firefox.nix
    ../../modules/programs/mpv.nix
    ../../modules/programs/vim.nix
    ../../modules/programs/emacs.nix
    ../../modules/programs/fastfetch.nix
    ../../modules/programs/steam.nix
  ];

  environment.systemPackages = with pkgs; [
    qbittorrent
    keepassxc
    ffmpeg
    zathura
    imv
    ncdu
    htop
    btop
  ];

  username = "spekie";
  hostname = "nixbox";
  flakePath = "/home/${config.username}/.config/nixos";
  wallpaperPath = "/home/${config.username}/Pictures/Wallpapers/gonunne.jpg";

  color.primary = "#ffffff";
  color.secondary = "#ffffff";
  color.additional = "#aaaaaa";
  color.background = "#333333";
  color.foreground = "#ffffff";
}
