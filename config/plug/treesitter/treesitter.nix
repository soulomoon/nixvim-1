{ pkgs, ... }:
{
  filetype.extension.liq = "liquidsoap";

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ee";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>eg";
      action = "<cmd>Neotree git_status toggle<cr>";
      options = {
        desc = "Open/Close Neotree git_status";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>es";
      action = "<cmd>Neotree document_symbols toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
  ];

  plugins.treesitter = {
    enable = true;
    gccPackage = null;

    settings = {
      indent = {
        enable = true;
      };
      highlight = {
        enable = true;
      };
    };

    folding = true;
    languageRegister.liq = "liquidsoap";
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.liquidsoap = {
      filetype = "liquidsoap",
    }
  '';
}
