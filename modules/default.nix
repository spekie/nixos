{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ./home-manager.nix
    ./sops.nix
    ./nh.nix
    ./fonts.nix
    ./theme.nix
    ./xdg.nix
  ];

  environment.systemPackages = with pkgs; [
    file
    zip
    unzip
    wget
    git
    htop
  ];
}
