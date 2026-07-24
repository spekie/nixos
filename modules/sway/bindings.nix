{ config, pkgs, ... }:

{
  hm.wayland.windowManager.sway = {
    config = rec {
      modifier = "Mod4";
      terminal = "kitty";
      menu = "tofi-drun";
    };

    config.keybindings = {
      "${modifier}+Return" = "exec ${terminal}";
      "${modifier}+d" = "exec ${menu}";
      "${modifier}+q" = "kill";
      "${modifier}+Shift+q" = "exec 'swaymsg exit'";
      "${modifier}+s" = "exec 'grim'";
      "${modifier}+Shift+s" = "exec 'grim -g \"$(slurp)\"'";
    
      "${modifier}+h" = "focus left";
      "${modifier}+j" = "focus down";
      "${modifier}+k" = "focus up";
      "${modifier}+l" = "focus right";
    
      "${modifier}+Shift+h" = "move left";
      "${modifier}+Shift+j" = "move down";
      "${modifier}+Shift+k" = "move up";
      "${modifier}+Shift+l" = "move right";
    
      "${modifier}+1" = "workspace number 1";
      "${modifier}+2" = "workspace number 2";
      "${modifier}+3" = "workspace number 3";
      "${modifier}+4" = "workspace number 4";
      "${modifier}+5" = "workspace number 5";
      "${modifier}+6" = "workspace number 6";
      "${modifier}+7" = "workspace number 7";
      "${modifier}+8" = "workspace number 9";
      "${modifier}+9" = "workspace number 9";
      "${modifier}+0" = "workspace number 10";
    
      "${modifier}+Shift+1" = "move container to workspace number 1";
      "${modifier}+Shift+2" = "move container to workspace number 2";
      "${modifier}+Shift+3" = "move container to workspace number 3";
      "${modifier}+Shift+4" = "move container to workspace number 4";
      "${modifier}+Shift+5" = "move container to workspace number 5";
      "${modifier}+Shift+6" = "move container to workspace number 6";
      "${modifier}+Shift+7" = "move container to workspace number 7";
      "${modifier}+Shift+8" = "move container to workspace number 9";
      "${modifier}+Shift+9" = "move container to workspace number 9";
      "${modifier}+Shift+0" = "move container to workspace number 10";
    
      "${modifier}+b" = "splith";
      "${modifier}+v" = "splitv";
      "${modifier}+f" = "fullscreen";
      "${modifier}+Shift+space" = "floating toggle";
      "${modifier}+Shift+equal" = "gaps inner all plus 5";
      "${modifier}+Shift+minus" = "gaps inner all minus 5";
    };
  };
}
