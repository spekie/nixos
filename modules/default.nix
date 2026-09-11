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

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  hardware.graphics.enable = true;

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    tmp.cleanOnBoot = true;
  };
}
