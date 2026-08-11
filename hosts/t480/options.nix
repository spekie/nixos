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
    ../../modules/programs/fastfetch.nix
  ];

  environment.systemPackages = with pkgs; [
    qbittorrent
    keepassxc
    ffmpeg
    zathura
    ncdu
    htop
    btop
    imv
  ];

  username = "spekie";
  hostname = "t480";
  flakePath = "/home/${config.username}/.config/nixos";
  wallpaperPath = "/home/${config.username}/Pictures/Wallpapers/wallhaven-l8dxer.png";

  color.primary = "#700e92";
  color.secondary = "#700e92";
  color.additional = "#ffffff";
  color.background = "#323232";
  color.foreground = "#ffffff";
}
