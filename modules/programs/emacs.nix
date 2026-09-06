{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    emacs
  ];

  services.emacs = {
    enable = true;
    startWithGraphical = true;
  };

  hm.services.emacs = {
    enable = true;
    defaultEditor = true;
    
    client = {
      enable = true;
      arguments = [
        "-c"
        "-a"
        "emacs"
      ];
    };
  };

  hm.programs.emacs = {
    enable = true;
    extraConfig = ''
      (menu-bar-mode 0)
      (tool-bar-mode 0)
      (scroll-bar-mode 0)
      (global-display-line-numbers-mode)
      (setq make-backup-files nil)
      (setq auto-save-default nil)
      (package-install 'ample-theme)
      (load-theme 'ample t)
    '';
  };
}
