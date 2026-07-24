{ config, lib, pkgs, ... }:

{
  options = {
    username = lib.mkOption {
      type = lib.types.str;
      default = "user";
      description = "NixOS system user";
    };
    hostname = lib.mkOption {
      type = lib.types.str;
      default = "nixos";
      description = "NixOS system hostname";
    };
  };
}
