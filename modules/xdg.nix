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

  xdg.mime.defaultApplications = {
    "text/*" = "emacsclient.desktop";
    "image/*" = "imv.desktop";
    "video/*" = "mpv.desktop";
    "audio/*" = "mpv.desktop";
    "application/pdf" = "org.pwmt.zathura.desktop";
    "application/epub+zip" = "org.pwmt.zathura.desktop";
  };
}
