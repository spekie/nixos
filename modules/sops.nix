{ config, inputs, pkgs, ... }:

{
  imports = [ inputs.sops-nix.nixosModules.sops ];

  environment.systemPackages = with pkgs; [ sops ];

  sops.age.keyFile = "${config.hm.home.homeDirectory}/.config/sops/age/keys.txt";
}
