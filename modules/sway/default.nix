{ config, pkgs, ... }:

{
  imports = [
    ./swaybar.nix
  ];

  programs.sway.enable = true;

  programs.sway.extraPackages = with pkgs; [
    imv
    grim
    adwaita-icon-theme
    gnome-themes-extra
  ];

  hm.wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;

    config = rec {
      modifier = "Mod4";
      terminal = "kitty";
    };

    config.output = {
      "DP-3" = {
        mode = "1920x1080@144Hz";
      };
    };

    config.input = {
      "type:pointer" = {
        accel_profile = "flat";
      };
    };

    extraConfig = ''
      default_border pixel 2
    '';
  };
}
