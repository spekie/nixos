{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nautilus
    ffmpegthumbnailer
  ];

  services.gvfs.enable = true;
  services.udisks2.enable = true;
}
