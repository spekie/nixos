{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ kitty ];

  hm.programs.kitty = {
    enable = true;
    settings = {
      enable_audio_bell = false;
      background_opacity = 0.8;
    };
  };
}
