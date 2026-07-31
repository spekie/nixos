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
    ../../modules/programs/mpd.nix
    ../../modules/programs/rmpc.nix
    ../../modules/programs/neovim.nix
    ../../modules/programs/steam.nix
    ../../modules/programs/fastfetch.nix
  ];

  environment.systemPackages = with pkgs; [
    qbittorrent
    keepassxc
    ffmpeg
    mkvtoolnix-cli
    zathura
    ncdu
    htop
    btop
    gotop
  ];

  username = "spekie";
  hostname = "nixbox";
  flakePath = "/home/${config.username}/.config/nixos";
  wallpaperPath = "/home/${config.username}/Pictures/Wallpapers/1351085837245.png";

  color.primary = "#e69d3b";
  color.secondary = "#e69d3b";
  color.additional = "#000000";
  color.background = "#323232";
  color.foreground = "#ffffff";
}
