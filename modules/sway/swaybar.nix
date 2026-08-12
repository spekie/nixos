{ config, ... }:

{
  imports = [
    ./i3blocks
  ];

  hm.wayland.windowManager.sway.config.bars = [{
    statusCommand = "i3blocks";
    position = "top";
    trayOutput = "none";

    fonts = {
      names = [ "Roboto Mono" "pango:RobotoMono Nerd Font" ];
      style = "Regular";
      size = 11.0;
    };

    colors = {
      statusline = config.color.foreground;
      background = config.color.background;
      separator = config.color.foreground;

      inactiveWorkspace = {
        border = config.color.background;
        background = config.color.background;
        text = config.color.additional;
      };
      activeWorkspace = {
        border = config.color.background;
        background = config.color.background;
        text = config.color.foreground;
      };
      focusedWorkspace = {
        border = config.color.background;
        background = config.color.background;
        text = config.color.foreground;
      };
      urgentWorkspace = {
        border = config.color.background;
        background = config.color.background;
        text = config.color.foreground;
      };
    };
  }];
}
