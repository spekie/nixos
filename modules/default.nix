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
    ./env.nix
  ];

  environment.systemPackages = with pkgs; [
    nh
    file
    git
    keepassxc
    qbittorrent
    ffmpeg
  ];
}
