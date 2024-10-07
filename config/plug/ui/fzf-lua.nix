{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      # profile = "telescope";
      winopts = {
        split = "belowright vnew";
      };
      fzf_opts = {
        "--history".__raw = "vim.fn.stdpath('data') .. '/fzf-lua-history'";
      };
      keymap = {
        fzf = {
          "ctrl-q" = "select-all+accept";
        };
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "files";
        options = {
          desc = "[F]ind project [F]iles";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir[/])";
        };
      };
      "<leader>b" = {
        action = "buffers";
        options = {
          desc = "+[B]uffer";
        };
      };
      "<leader>fq" = {
        action = "quickfix";
        options = {
          desc = "[F]ind [Q]uickfix list";
        };
      };
      "<leader>ff" = {
        action = "files";
        options = {
          desc = "[F]ind project [F]iles";
        };
      };
      "<leader>ft" = {
        action = "live_grep";
        options = {
          desc = "[F]ind [T]ext";
        };
      };
      "<leader>r" = {
        action = "resume";
        options = {
          desc = "[R]esume";
        };
      };
      "<leader>fr" = {
        action = "oldfiles";
        options = {
          desc = "[F]ind [R]ecent";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "[F]ind [B]uffers";
        };
      };
      # "<C-p>" = {
      #   action = "git_files";
      #   options = {
      #     desc = "Search git files";
      #   };
      # };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Status";
        };
      };
      "<leader>sa" = {
        action = "autocommands";
        options = {
          desc = "[S]earch [A]uto Commands";
        };
      };
      "<leader>sb" = {
        action = "lgrep_curbuf";
        options = {
          desc = "[S]earch current [B]uffer";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "[S]earch [C]ommand History";
        };
      };
      "<leader>sC" = {
        action = "commands";
        options = {
          desc = "[S]earch [C]ommands";
        };
      };
      "<leader>sd" = {
        action = "diagnostics_document";
        options = {
          desc = "Document diagnostics";
        };
      };
      "<leader>sD" = {
        action = "diagnostics_workspace";
        options = {
          desc = "Workspace diagnostics";
        };
      };
      "<leader>sh" = {
        action = "help_tags";
        options = {
          desc = "Help pages";
        };
      };
      "<leader>sH" = {
        action = "highlights";
        options = {
          desc = "Search Highlight Groups";
        };
      };
      "<leader>sk" = {
        action = "keymaps";
        options = {
          desc = "[S]earch [K]eymaps";
        };
      };
      "<leader>sM" = {
        action = "man_pages";
        options = {
          desc = "Man pages";
        };
      };
      "<leader>sm" = {
        action = "marks";
        options = {
          desc = "Jump to Mark";
        };
      };
      "<leader>so" = {
        action = "vim_options";
        options = {
          desc = "Options";
        };
      };
      "<leader>sR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>uC" = {
        action = "colorscheme";
        options = {
          desc = "Colorscheme preview";
        };
      };
      "<leader>fc" = {
        action = "builtin";
        options = {
          desc = "fzf-lua builtin commands";
        };
      };
      "<C-p>" = {
        action = "builtin";
        options = {
          desc = "fzf-lua builtin commands";
        };
      };
      "<leader>fp" = {
        action = "profiles";
        options = {
          desc = "fzf-lua configuration profiles";
        };
      };
      "<leader>ca" = {
        action = "lsp_code_actions";
        options = {
          desc = "fzf-lua LSP [C]ode [A]ctions";
        };
      };
    };
  };
}
