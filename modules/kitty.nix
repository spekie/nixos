{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kitty
  ];

  hm.programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.8";
    };
  };
}
