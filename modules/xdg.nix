{ pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      xdg-user-dirs
    ];
    sessionVariables = rec {
      XDG_CACHE_HOME = "$HOME/.cache";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_DATA_HOME = "$HOME/.local/share";
      XDG_STATE_HOME = "$HOME/.local/state";
      PATH = "$HOME/.local/bin";
    };
  };
}
