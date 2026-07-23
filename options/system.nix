{ config, lib, pkgs, ... }:

{
  options = {
    username = lib.mkOption {
      type = lib.types.str;
      default = "user";
      description = "Primary NixOS user";
    };

    hostname = lib.mkOption {
      type = lib.types.str;
      default = "nixos";
      description = "Hostname for NixOS";
    };

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
