{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ libreoffice ];
  fonts.packages = with pkgs; [ corefonts ];
}
