{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ xdg-user-dirs ];

  environment.etc."xdg/user-dirs.defaults".text = ''
    DESKTOP=
    DOWNLOAD=dls
    TEMPLATES=
    PUBLICSHARE=
    DOCUMENTS=docs
    MUSIC=
    PICTURES=pics
    VIDEOS=vids
  '';

  hm.xdg.enable = true;
}
