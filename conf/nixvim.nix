{ config, pkgs, inputs, ... } : {
 imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
      enable = true;
      colorschemes.gruvbox.enable = true;
      plugins = {
        lualine.enable = true;
	nvim-autopairs.enable = true;
	nvim-tree.enable = true;
	fzf-lua.enable = true;
	treesitter.enable = true;
        nix.enable = true;
        nvim-colorizer.enable = true;
        lsp = {
           enable = true;
	   servers = {

              clangd.enable = true;


	};
	  
	};
      };
      keymaps =  [ {
        action = "<cmd>NvimTreeToggle<CR>";
        key = "<C-b>";  # this line is changed
      }
      {
        action = "<cmd>NvimTreeFocus<CR>";
        key = "<C-x>"; 
      }
       ];
      };
}
