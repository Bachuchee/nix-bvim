_: {
  plugins.alpha = {
    enable = true;
    
    layout = [
      {
	type = "padding";
	val = 2;
      }
      {
	opts = {
	  hl = "Type";
	  position = "center";
	};
	type = "text";
	val = [
	  "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
	  "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
	  "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
	  "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
	  "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
	  "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
	];
      }
      {
	type = "padding";
	val = 2;
      }
      {
	type = "group";
	opts = {
	  position = "center";
	};
	val = [
	  {
	    on_press = {
	      __raw = "function() vim.cmd[[ene]] end";
	    };
	    opts = {
	      shortcut = "n";
	      position = "center";
	    };
	    type = "button";
	    val = "   New file";
	  }
	  {
	    on_press = {
	      __raw = "function() vim.cmd[[q]] end";
	    };
	    opts = {
	      shortcut = "q";
	      position = "center";
	    };
	    type = "button";
	    val = " ✖ Quit Neovim";
	  }
	];
      }
      {
	type = "padding";
	val = 2;
      }
      {
	opts = {
	  hl = "Keyword";
	  position = "center";
	};
	type = "text";
	val = "Eat. Sleep. Edit. Repeat.";
      }
    ];
  };
}
