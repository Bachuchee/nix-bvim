_: {
  plugins.fzf-lua = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "files";
        options = {
          desc = "Find files";
        };
      };
      "<leader><leader>" = {
        action = "files";
        options = {
          desc = "Find files";
        };
      };
      "<leader>ss" = {
        action = "lsp_document_symbols";
        options = {
          desc = "Search document symbols";
        };
      };
      "<leader>sS" = {
        action = "lsp_workspace_symbols";
        options = {
          desc = "Search workspace symbols";
        };
      };
      "<leader>sd" = {
        action = "diagnostics_document";
        options = {
          desc = "Search document diagnostics";
        };
      };
      "<leader>sD" = {
        action = "diagnostics_workspace";
        options = {
          desc = "Search workspace diagnostics";
        };
      };
      "<leader>," = {
        action = "buffers";
        options = {
          desc = "Switch buffers";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Live grep";
        };
      };
      "<leader>sg" = {
        action = "live_grep";
        options = {
          desc = "Search with live grep";
        };
      };
      "<leader>sm" = {
        action = "manpages";
        options = {
          desc = "Search man pages";
        };
      };
      "<leader>gb" = {
        action = "git_blame";
        options = {
          desc = "Git blame";
        };
      };
    };
  };
}
