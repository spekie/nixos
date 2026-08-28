{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.wireguard-tools ];
  networking.wg-quick.interfaces.wg0.configFile = "/home/${config.username}/Desktop/wg0.conf";
}
