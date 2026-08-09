{ pkgs, ... }:

{
  imports = [
    ./home.nix
    ./home-manager.nix
    ./nh.nix
    ./fonts.nix
    ./xdg.nix
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
  ];
}
