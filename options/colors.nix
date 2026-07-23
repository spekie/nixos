{ config, lib, pkgs, ... }:

{
  options = {
    color = {
      primary = lib.mkOption {
        type = lib.types.str;
        default = "#ffffff";
        description = "Primary color";
      };
      secondary = lib.mkOption {
        type = lib.types.str;
        default = "#111111";
        description = "Secondary color";
      };
      background = lib.mkOption {
        type = lib.types.str;
        default = "#334fab";
        description = "Background color";
      };
      foreground = lib.mkOption {
        type = lib.types.str;
        default = "#ffffff";
        description = "Foreground color";
      };
    };
  };
}
