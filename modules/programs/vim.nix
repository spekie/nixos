{ config, pkgs, ... }:

{
  programs.vim = {
    enable = true;
    defaultEditor = true;
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
