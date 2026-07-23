{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam
  ];

  services.pipewire.alsa.support32Bit = true;
  hardware.graphics.enable32Bit = true;
}
