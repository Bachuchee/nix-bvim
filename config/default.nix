{ self, pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./plugins/bufferline.nix
    ./plugins/lualine.nix
    ./plugins/yanky.nix
    ./plugins/flash.nix
    ./plugins/blink-cmp.nix
    ./plugins/snacks.nix
    ./plugins/which-key.nix
    ./plugins/indent-blankline.nix
    ./plugins/treesitter.nix
    ./plugins/smear-cursor.nix
    ./plugins/navic.nix
    ./plugins/fzf.nix
    ./plugins/alpha.nix
    ./plugins/lazygit.nix
    ./plugins/cursorline.nix
    ./plugins/noice.nix
    ./plugins/conform.nix
    ./plugins/toggleterm.nix
  ];

  colorschemes.catppuccin.enable = true;

  clipboard = {
    providers.wl-copy.enable = true;
  };

  opts = {
    shiftwidth = 2;
    number = true;
    relativenumber = true;

    list = true;

    # set the system clipboard
    clipboard = "unnamedplus";
  };
}
