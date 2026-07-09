{ config, pkgs, ... }:

{
  home.username = "spekie";
  home.homeDirectory = "/home/spekie";

  home.packages = [
    pkgs.htop
  ];

  home.stateVersion = config.system.stateVersion;
  programs.home-manager.enable = true;
}
