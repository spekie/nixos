{ config, lib, pkgs, ... }:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  hm.home.username = config.username;
  hm.home.homeDirectory = "/home/${config.username}";
  hm.home.stateVersion = config.system.stateVersion;
}
