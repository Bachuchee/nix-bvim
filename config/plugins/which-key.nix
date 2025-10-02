_: {
  plugins.which-key = {
    enable = true;
    settings = {
      delay = 200;
      expand = 1;
      notify = false;
      preset = false;
      layout = {
        align = "center";
      };
      replace = {
        desc = [
          [
            "<space>"
            "␣"
          ]
          [
            "<leader>"
            "␣"
          ]
          [
            "<[cC][rR]>"
            "↵"
          ]
          [
            "<[tT][aA][bB]>"
            "⇥"
          ]
          [
            "<[bB][sS]>"
            "⌫"
          ]
        ];
      };
      spec = [
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
        }
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
        }
        {
          __unkeyed-1 = "<leader>l";
          group = "lsp";
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "files";
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "buffers";
        }
      ];
      win = {
        border = "rounded";
        col = 0.5;
      };
    };
  };
}
