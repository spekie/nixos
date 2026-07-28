{ config, pkgs, ... }:

{
  imports = [
    ./home.nix
    ./home-manager.nix
    ./nh.nix
    ./fonts.nix
    ./gui.nix
    ./sops.nix
    ./wg.nix
  ];

  environment.systemPackages = with pkgs; [
    file
    zip
    unzip
    wget
    tree
    git
    xdg-user-dirs
  ];

  hm.xdg.enable = true;
}
