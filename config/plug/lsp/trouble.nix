{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_preview = true;
      auto_fold = true;
      # signs = {
      #   error = " ";
      #   warning = " ";
      #   hint = "💡";
      #   information = " ";
      #   other = " ";
      # };
      # use_diagnostic_signs = true;
      # auto_close = false;
      # position = "right";
      # width = 80;
    };

  };

  # keys = {
  #   {
  #     "<leader>xx",
  #     "<cmd>Trouble diagnostics toggle<cr>",
  #     desc = "Diagnostics (Trouble)",
  #   },
  #   {
  #     "<leader>xX",
  #     "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  #     desc = "Buffer Diagnostics (Trouble)",
  #   },
  #   {
  #     "<leader>cs",
  #     "<cmd>Trouble symbols toggle focus=false<cr>",
  #     desc = "Symbols (Trouble)",
  #   },
  #   {
  #     "<leader>cl",
  #     "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  #     desc = "LSP Definitions / references / ... (Trouble)",
  #   },
  #   {
  #     "<leader>xL",
  #     "<cmd>Trouble loclist toggle<cr>",
  #     desc = "Location List (Trouble)",
  #   },
  #   {
  #     "<leader>xQ",
  #     "<cmd>Trouble qflist toggle<cr>",
  #     desc = "Quickfix List (Trouble)",
  #   },
  # },

  keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options.desc = "Diagnostics (Trouble)";
    }
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>Trouble lsp toggle focus=false<CR>";
      options = {
        silent = false;
        desc = "LSP Definitions / references / ... (Trouble)";
      };
    }

    {
      key = "<leader>cw";
      action = "<cmd>Trouble symbols toggle focus=false<CR>";
      options = {
        silent = true;
        desc = "Symbols (Trouble)";
      };
    }
  ];

  extraConfigLua = ''
    local config = require("fzf-lua.config")
    local actions = require("trouble.sources.fzf").actions
    config.defaults.actions.files["ctrl-y"] = actions.open
  '';

}
