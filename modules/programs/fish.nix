{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
    '';

    shellAliases = {
      ls = "ls --color=auto --group-directories-first";
      grep = "grep --color=auto";
      ffmpeg = "ffmpeg -hide_banner";
      ffprobe = "ffprobe -hide_banner";
      ffplay = "ffplay -hide_banner";
      #rebuild = "sudo nixos-rebuild switch --flake $XDG_CONFIG_HOME/nixos#nixbox";
      #update = "sudo nix flake update --flake $XDG_CONFIG_HOME/nixos";
    };
  };
}
