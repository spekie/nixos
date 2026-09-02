{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.wireguard-tools ];
  networking.wg-quick.interfaces.wg0.configFile = "${config.flakePath}/wg0.conf";
}
