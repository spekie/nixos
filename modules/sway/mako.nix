{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ mako ];

  hm.services.mako = {
    enable = true;
    settings = {
      text-color = config.color.foreground;
      background-color = config.color.background;
      border-color = config.color.primary;
      default-timeout = 7000;
      history = 0;
      layer = "overlay";
    };
  };
}
