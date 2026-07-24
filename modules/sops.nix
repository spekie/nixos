{ config, inputs, pkgs, ... }:

{
  imports = [ inputs.sops-nix.nixosModules.sops ];

  environment.systemPackages = with pkgs; [ sops ];

  sops.age.keyFile = "/home/${config.username}/.config/sops/age/keys.txt";
}
