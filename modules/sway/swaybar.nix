{ config, pkgs, ... }:

{
  hm.wayland.windowManager.sway.config.bars = [{
    position = "top";
    statusCommand = "while date +'%H:%M'; do sleep 1; done";

    trayOutput = "none";

    fonts = {
      names = [ "Liberation Mono" ];
      size = 10.0;
    };

    colors = {
      statusline = config.color.foreground;
      background = config.color.background;
      inactiveWorkspace = {
        border = config.color.background;
        background = config.color.background;
        text = "#5c5c5c";
      };
    };
  }];
}
