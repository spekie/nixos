{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    steam
  ];

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-unwrapped"
  ];
}
