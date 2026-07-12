{ config, pkgs, ... }:

{
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
