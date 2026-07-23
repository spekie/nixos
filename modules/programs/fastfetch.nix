{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fastfetch
  ];

  hm.programs.fastfetch = {
    enable = true;

    settings = {
      modules = [
        "title"
        "separator"
        "os"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "de"
        "wm"
        "terminal"
        "terminalfont"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "battery"
        "poweradapter"
        "break"
        "colors"
      ];
    };
  };
}
