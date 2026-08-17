{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    emacs
  ];

  hm.programs.emacs = {
    enable = true;
    extraConfig = ''
      (menu-bar-mode 0)
      (tool-bar-mode 0)
      (scroll-bar-mode 0)
      (global-display-line-numbers-mode)
    '';
  };
}
