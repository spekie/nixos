{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ./home-manager.nix
    ./nh.nix
    ./fonts.nix
    ./theme.nix
    ./xdg.nix
    ./gpg.nix
    ./sops.nix
    ./wg.nix
  ];

  environment.systemPackages = with pkgs; [
    file
    zip
    unzip
    wget
    git
  ];
}
