{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

  hm.programs.neovim = {
    enable = true;

    plugins = with pkgs.vimPlugins; [
      nvim-treesitter.withAllGrammars
      tokyonight-nvim
      lualine-nvim
      nvim-web-devicons
    ];

    initLua = ''
      vim.cmd.colorscheme("tokyonight")
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

      require('lualine').setup({
        options = { theme = "tokyonight" },
      })

      require('nvim-treesitter').setup({})

      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          pcall(vim.treesitter.start)
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    '';

    extraConfig = ''
      set tabstop=2
      set shiftwidth=2
      set ignorecase
      set number
      set noswapfile
      set nobackup
    '';
  };
}
