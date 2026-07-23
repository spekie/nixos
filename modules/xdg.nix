{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ xdg-user-dirs ];

  hm.xdg = {
    enable = true;
  };
}
