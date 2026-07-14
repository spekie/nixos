{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ yt-dlp ];

  hm.programs.yt-dlp = {
    enable = true;

    settings = {
      embed-metadata = true;
      output = "$HOME/vids/%(title)s.%(ext)s";
    };
  };
}
