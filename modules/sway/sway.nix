{ config, pkgs, ... }:

{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  programs.sway.extraPackages = with pkgs; [
    swaybg
    wmenu
    grim
    slurp
    imv
  ];

  hm.wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;

    config = rec {
      startup = [
        {command = "swaybg -i ${config.wallpaperPath} -m fill";}
      ];
      defaultWorkspace = "workspace number 1";

      colors.focused = {
        border = config.color.primary;
        background = config.color.primary;
        text = config.color.foreground;
        indicator = config.color.secondary;
        childBorder = config.color.primary;
      };
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
      default_floating_border none
    '';
  };
}
