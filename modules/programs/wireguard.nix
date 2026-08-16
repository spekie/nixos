{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.wireguard-tools ];
  networking.wg-quick.interfaces.wg0.configFile = "/home/${config.username}/Downloads/wg0.conf";
}
