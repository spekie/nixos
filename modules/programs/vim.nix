{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customRC = ''
        set number
      '';
    };
  };

  hm.programs.vim = {
    enable = true;

    settings = {
      number = true;
      tabstop = 4;
    };

    extraConfig = ''
      syntax on 
      filetype plugin on 
      set noswapfile
      set nobackup
    '';
  };
}
