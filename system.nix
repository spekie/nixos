{ config, pkgs, ... }:

{
  imports = [
    ./modules/home.nix
    ./modules/home-manager.nix
    ./modules/kitty.nix
    ./modules/sway.nix
  ];

  environment.systemPackages = with pkgs; [
    psmisc
    htop
    mpv
  ];

  fonts.packages = with pkgs; [
    liberation_ttf
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
  ];

  fonts = {
    fontconfig = {
      defaultFonts = {
        serif = [ "Liberation Serif" ];
        sansSerif = [ "Liberation Sans" ];
        monospace = [ "Liberation Mono" ];
      };
    };
  };
}
