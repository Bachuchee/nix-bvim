{ lib, ... }:
{
  plugins.lspconfig.enable = true;

  plugins.lsp-lines = {
    enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };

  plugins.fidget = {
    enable = true;
    settings = {
      notification = {
        window = {
          winblend = 0;
        };
      };
      progress = {
        display = {
          done_icon = "";
          done_ttl = 7;
          format_message = lib.nixvim.mkRaw ''
            function(msg)
              if string.find(msg.title, "Indexing") then
                return nil -- Ignore "Indexing..." progress messages
              end
              if msg.message then
                return msg.message
              else
                return msg.done and "Completed" or "In progress..."
              end
            end
          '';
        };
      };
      text = {
        spinner = "dots";
      };
    };
  };

  lsp.servers = {
    nil_ls = {
      enable = true;
    };

    pyright = {
      enable = true;
    };

    clangd = {
      enable = true;
    };
  };

  lsp.keymaps = [
    {
      key = "gd";
      action = "<cmd>FzfLua lsp_definitions<cr>";
      options.desc = "Go to defintion";
    }
    {
      key = "gD";
      lspBufAction = "type_definition";
      options.desc = "Go to type definition";
    }
    {
      key = "gi";
      lspBufAction = "implementation";
      options.desc = "Go to implementation";
    }
    {
      key = "K";
      lspBufAction = "hover";
      options.desc = "Hover info";
    }
    {
      key = "gr";
      action = "<cmd>FzfLua lsp_references<cr>";
      options = {
        desc = "Go to references";
        nowait = true;
        remap = true;
      };
    }
    {
      action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=-1, float=true }) end";
      key = "<leader>k";
      options = {
        desc = "Next diagnostic issue";
      };
    }
    {
      action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=1, float=true }) end";
      key = "<leader>j";
      options = {
        desc = "Prev diagnostic issue";
      };
    }
    {
      action = "<CMD>LspStop<Enter>";
      key = "<leader>lx";
      options.desc = "Stop lsp";
    }
    {
      action = "<CMD>LspStart<Enter>";
      key = "<leader>ls";
      options.desc = "Start lsp";
    }
    {
      action = "<CMD>LspRestart<Enter>";
      key = "<leader>lr";
      options.desc = "Restart lsp";
    }
    {
      action = "<CMD>Lspsaga hover_doc<Enter>";
      key = "K";
    }
  ];
}
