{ config, lib, pkgs, ... }:

{
  options = {
    flakePath = lib.mkOption {
      type = lib.types.str;
      default = "/home/${config.username}/nixos";
      description = "NixOS flake directory";
    };
    wallpaperPath = lib.mkOption {
      type = lib.types.str;
      default = "${config.flakePath}/wallpapers/1407554998567.png";
      description = "Path to wallpaper";
    };
  };
}
