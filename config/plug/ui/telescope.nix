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
    };

    #   # files = {
    #   #   find_opts.__raw = "[[-type f -not -path '*.git/objects*' -not -path '*.env*']]";
    #   #   prompt = "Files❯ ";
    #   #   multiprocess = true;
    #   #   file_icons = true;
    #   #   color_icons = true;
    #   # };
    keymaps = {
      #     # files = {
      #     #   ["<C-s>"] = "split";
      #     #   ["<C-v>"] = "vsplit";
      #     #   ["<C-t>"] = "tabedit";
      #     # };
      #     "<leader><leader>fg" = {
      #       action = "live_grep";
      #       options = {
      #         desc = "Grep (root dir)";
      #       };
      #     };

      #     # resume
      #     "<leader><leader>fr" = {
      #       action = "resume";
      #       options = {
      #         desc = "Resume last picker";
      #       };
      #     };
      "<leader><space>" = {
        action = "files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>b" = {
        action = "buffers";
        options = {
          desc = "+buffer";
        };
      };
      "<leader>fq" = {
        action = "quickfix";
        options = {
          desc = "quickfix list";
        };
      };
      "<leader>ff" = {
        action = "files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>fr" = {
        action = "live_grep";
        options = {
          desc = "Find text";
        };
      };
      "<leader>r" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>fg" = {
        action = "oldfiles";
        options = {
          desc = "Recent";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
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
          desc = "Auto Commands";
        };
      };
      "<leader>sb" = {
        action = "lgrep_curbuf";
        options = {
          desc = "live grep current buffer";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>sC" = {
        action = "commands";
        options = {
          desc = "Commands";
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
          desc = "Keymaps";
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
    };

  };

  plugins.telescope = {
    enable = false;
    extensions = {
      file-browser = {
        enable = true;
      };
      fzf-native = {
        enable = true;
        settings = {
          fuzzy = true;
          override_generic_sorter = true;
          override_file_sorter = true;
          case_mode = "smart_case";
        };
      };
    };
    settings = {
      pickers.colorscheme.enable_preview = true;

      defaults = {
        mappings = {
          i = {
            "<S-Up>".__raw = "require('telescope.actions').cycle_history_prev";
            "<S-Down>".__raw = "require('telescope.actions').cycle_history_next";
          };
        };
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>b" = {
        action = "buffers";
        options = {
          desc = "+buffer";
        };
      };
      "<leader>fq" = {
        action = "quickfix";
        options = {
          desc = "quickfix list";
        };
      };
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>fr" = {
        action = "live_grep";
        options = {
          desc = "Find text";
        };
      };
      "<leader>r" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>fR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>fg" = {
        action = "oldfiles";
        options = {
          desc = "Recent";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Search git files";
        };
      };
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
          desc = "Auto Commands";
        };
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Buffer";
        };
      };
      "<leader>sc" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>sC" = {
        action = "commands";
        options = {
          desc = "Commands";
        };
      };
      "<leader>sD" = {
        action = "diagnostics";
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
          desc = "Keymaps";
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
    };
  };
  # keymaps = [
  #
  #   {
  #     mode = "n";
  #     key = "<leader>sd";
  #     action = "<cmd>Telescope diagnostics bufnr=0<cr>";
  #     options = {
  #       desc = "Document diagnostics";
  #     };
  #   }
  #   {
  #     mode = "n";
  #     key = "<leader>fe";
  #     action = "<cmd>Telescope file_browser<cr>";
  #     options = {
  #       desc = "File browser";
  #     };
  #   }
  #   {
  #     mode = "n";
  #     key = "<leader>fE";
  #     action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
  #     options = {
  #       desc = "File browser";
  #     };
  #   }
  # ];
  extraConfigLua = ''
    function _G.getVisualSelection()
        vim.cmd('noau normal! "vy"')
        local text = vim.fn.getreg("v")
        vim.fn.setreg("v", {})

        text = string.gsub(text, "\n", "")
        if #text > 0 then
            return text
        else
            return ""
        end
    end
    vim.api.nvim_set_keymap('v', '<leader>ss', ':lua require"telescope.builtin".live_grep {default_text=getVisualSelection()}<cr>', {noremap = true, silent = true})
  '';
}
