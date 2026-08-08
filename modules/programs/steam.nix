{ config, lib, pkgs, ... }:

{
  programs.steam.enable = true;

  services.pipewire.alsa.support32Bit = true;
  hardware.graphics.enable32Bit = true;
}
