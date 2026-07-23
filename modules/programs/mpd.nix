{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mpd
    mpc
  ];

  hm.services.mpd = {
    enable = true;
    musicDirectory = "/home/${config.hm.home.username}/Music";

    extraConfig = ''
      audio_output {
        type "pipewire"
        name "pipewire"
      }

      audio_output {
        type "fifo"
        name "fifo"
        path "/tmp/mpd.fifo"
        format "44100:16:2"
      }
    '';
  };
}
