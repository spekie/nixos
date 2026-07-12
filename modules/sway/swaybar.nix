{ config, pkgs, ... }:

{
  hm.wayland.windowManager.sway.config.bars = [{
    position = "top";
    statusCommand = "while date +'%a %b %d %I:%M %p'; do sleep 1; done";

    fonts = {
      names = [ "Liberation Mono" ];
      size = 10.0;
    };

    colors = {
      statusline = "#ffffff";
      background = "#323232";
      inactiveWorkspace = {
        border = "#323232";
        background = "#323232";
        text = "#5c5c5c";
      };
    };
  }];
}
