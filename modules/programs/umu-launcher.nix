{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    umu-launcher
  ];

  services.pipewire.alsa.support32Bit = true;
  hardware.graphics.enable32Bit = true;
}
