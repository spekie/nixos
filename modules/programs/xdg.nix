{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ xdg-user-dirs ];

  hm.xdg = {
    enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      desktop = "$HOME/";
      music = "$HOME/";
      projects = "$HOME/";
      templates = "$HOME/";
      publicShare = "$HOME/";
      download = "$HOME/dls" ;
      documents = "$HOME/docs";
      pictures = "$HOME/pics";
      videos = "$HOME/vids";
    };
  };
}
