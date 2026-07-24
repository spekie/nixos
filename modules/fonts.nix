{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    liberation_ttf
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
    lato
    roboto
    roboto-mono
    jetbrains-mono
  ] ++ (with nerd-fonts; [
    liberation
    roboto-mono
    jetbrains-mono
  ]);

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
