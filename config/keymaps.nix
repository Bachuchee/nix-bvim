_: {
  globals.mapleader = " ";

  keymaps = [
    {
      action = ''<cmd>lua require("flash").jump()<cr>'';
      key = "s";
      mode = [
        "n"
        "v"
      ];
      options = {
        desc = "Flash jump";
      };
    }
    {
      action = "<cmd>LazyGit<cr>";
      key = "<leader>gg";
      mode = [
        "n"
        "v"
      ];
      options = {
        desc = "Lazygit";
      };
    }
    {
      action = "<cmd>NoiceFzf<cr>";
      key = "<leader>n";
      mode = [ "n" ];
      options = {
        desc = "Noice menu";
      };
    }
    {
      action = "<cmd>w<cr>";
      key = "<C-s>";
      mode = [ "n" ];
      options = {
        desc = "save file";
      };
    }
    {
      action = "<cmd>q<cr>";
      key = "<leader>q";
      mode = [ "n" ];
      options = {
        desc = "quit bvim";
      };
    }
    {
      action = "<cmd>BufferLineCycleNext<cr>";
      key = "L";
      mode = [ "n" ];
      options = {
        desc = "Next buffer";
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<cr>";
      key = "H";
      mode = [ "n" ];
      options = {
        desc = "Prev buffer";
      };
    }
    {
      action = "<cmd>bd<cr>";
      key = "<leader>bd";
      mode = [ "n" ];
      options = {
        desc = "Close buffer";
      };
    }
  ];
}
