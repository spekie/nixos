{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./sway.nix
    ./waybar.nix
    ./bindings.nix
  ];
}
