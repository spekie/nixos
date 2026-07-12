{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xdg-user-dirs
  ];

  environment.etc."xdg/user-dirs.defaults".text = ''
    DESKTOP=
    DOWNLOAD=dls
    TEMPLATES=
    PUBLICSHARE=
    DOCUMENTS=docs
    MUSIC=
    PICTURES=pics
    VIDEOS=
  '';

  hm.xdg.enable = true;

  environment.sessionVariables = rec {
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";
  };
}
