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
    keepassxc
    ffmpeg
    zathura
    ncdu
    htop
  ];

  username = "spekie";
  hostname = "t480";
  flakePath = "/home/${config.username}/.config/nixos";
  wallpaperPath = "/home/${config.username}/Pictures/Wallpapers/1351085837245.png";

  color.primary = "#e69d3b";
  color.secondary = "#e69d3b";
  color.additional = "#000000";
  color.background = "#323232";
  color.foreground = "#ffffff";
}
