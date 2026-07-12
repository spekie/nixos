{ config, pkgs, ... }:

{
  hm.home.pointerCursor = {
    name = "Adwaita";
    size = 24;
    package = pkgs.adwaita-icon-theme;
    x11 = {
      enable = true;
      defaultCursor = "Adwaita";
    };
  };

  hm.gtk = {
    enable = true;

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };

  hm.dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}
