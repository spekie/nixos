{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    promptInit = "starship init fish | source";
    interactiveShellInit = ''
      set fish_greeting
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
    };
  };
}
