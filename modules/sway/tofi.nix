{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ tofi ];

  hm.programs.tofi = {
    enable = true;
    settings = {
      drun-launch = true;
      history = false;

      font = "monospace";
      font-size = 14;
      horizontal = true;
      anchor = "top";
      height = 30;
      width = "100%";
      result-spacing = 15;
      min-input-width = 120;
      prompt-text = " run: ";

      border-width = 0;
      outline-width = 0;
      padding-top = 0;
      padding-bottom = 0;
      padding-left = 0;
      padding-right = 0;

      background-color = config.color.background;
      text-color = config.color.foreground;
      selection-color = config.color.primary;
      border-color = config.color.primary;
    };
  };
}
