{ config, pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      nh
    ];

    sessionVariables = rec {
      NH_FLAKE = "${config.hm.home.homeDirectory}/.config/nixos";
    };
  };
}
