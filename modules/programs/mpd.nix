{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rmpc
    cava
  ];

  hm.services.mpd = {
    enable = true;
    musicDirectory = "/home/${config.hm.home.username}/Music";

    extraConfig = ''
      audio_output {
        type "pipewire"
        name "pipewire"
      }
    '';
  };
}
