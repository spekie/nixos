{ config, pkgs, ... }:

{
  hm.wayland.windowManager.sway.config.bars = [{
    command = "waybar";
  }];

  programs.waybar.enable = true;

  hm.programs.waybar = {
    enable = true;
    settings.main = {
      layer = "top";
      position = "top";
      height = 34;
      spacing = 7;

      modules-left = [ "sway/workspaces" ];
      modules-right = [ "mpd" "wireplumber" "battery" "clock" "tray" ];

      "sway/workspaces" = {
        disable-scroll = true;
      };
      "clock" = {
        format = "{:%H:%M}";
        format-alt = "{:%Y-%m-%d %H:%M}";
        tooltip = false;
      };
      "mpd" = {
        format = "{stateIcon} {artist} - {title}";
        format-stopped = "󰝚 Stopped";
        state-icons = {
          paused = "";
          playing = "";
        };
        tooltip = false;
        on-click = "rmpc update";
      };
      "wireplumber" = {
        format = "{icon} {volume}%";
        format-muted = "󰝟";
        format-icons = [ "󰕾" ];
        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
      };
      "battery" = {
        format = "{icon} {capacity}%";
        format-icons = {
          default = [ "" "" "" "" "" ];
          charging = [ "󰢟" "󰢜" "󰂆" "󰂇" "󰂈" "󰢝" "󰂉" "󰢞" "󰂊" "󰂋" "󰂅" ];
        };
        bat = "BAT1";
        interval = 60;
      };
    };

    style = ''
      * {
        font-family: Roboto Mono;
        font-size: 15px;
        border: none;
        border-radius: 0;
        min-height: 0;
      }
      window#waybar {
        background-color: ${config.color.background};
        color: ${config.color.foreground};
      }
      button {
        padding: 0 5px;
        border: none;
      }
      button:hover,
      button.active,
      button.selected,
      button.urgent {
        color: ${config.color.foreground};
        box-shadow: inherit;
        text-shadow: inherit;
        background: none;
      }
      button.focused {
        color: ${config.color.additional};
        background-color: ${config.color.primary};
      }
      #clock,#battery,#mpd,#wireplumber,#tray { padding: 0 5px; }
    '';
  };
}
