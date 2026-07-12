{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./sway
    ./home.nix
    ./home-manager.nix
    ./sops.nix
    ./wg.nix
    ./fonts.nix
    ./theme.nix
  ];

  environment.systemPackages = with pkgs; [
    psmisc
    htop
    file
    fastfetch
    keepassxc
    qbittorrent
  ];
}
