{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-unwrapped"
  ];

  services.pipewire.alsa.support32Bit = true;
  hardware.graphics.enable32Bit = true;
}
