{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./sway
    ./home.nix
    ./home-manager.nix
    ./sops.nix
    ./nh.nix
    ./wg.nix
    ./fonts.nix
    ./theme.nix
  ];

  environment.systemPackages = with pkgs; [
    file
    zip
    unzip
    wget
    htop
    btop
    git
    ffmpeg
    clang
    rustup
  ];
}
