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
      ignorecase = true;
      tabstop = 4;
      shiftwidth = 4;
    };

    extraConfig = ''
      syntax on 
      filetype plugin on 
      set incsearch
      set noswapfile
      set nobackup
    '';
  };
}
