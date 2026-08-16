{ pkgs, ... }:

{
  imports = [
    ./home.nix
    ./home-manager.nix
    ./nh.nix
    ./fonts.nix
    ./xdg.nix
    ./gui.nix
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
