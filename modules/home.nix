{ config, lib, pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  hm.home.username = "spekie";
  hm.home.homeDirectory = "/home/${config.hm.home.username}";
  hm.home.stateVersion = config.system.stateVersion;
}
