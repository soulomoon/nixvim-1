{ config, ... }:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins.lualine = {
    enable = true;
    settings = {
      globalstatus = true;
      extensions = [
        "fzf"
        "neo-tree"
      ];
      disabled_filetypes = {
        statusline = [
          "dashboard"
          "alpha"
          "starter"
        ];
      };
      inactive_sections = {
        lualine_x = [
          "filename"
          "filetype"
        ];
      };
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            icon = " ";
          }
        ];
        lualine_b = [
          {
            __unkeyed = "branch";
            icon = "";
          }
          {
            __unkeyed = "diff";
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };

          }
        ];
        lualine_c = [
          {
            __unkeyed = "diagnostic";
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          }
        ];
        lualine_x = [
          {
            __unkeyed.__raw = ''
              function()
                local icon = " "
                local status = require("copilot.api").status.data
                return icon .. (status.message or " ")
              end,

              cond = function()
              local ok, clients = pcall(vim.lsp.get_clients, { name = "copilot", bufnr = 0 })
              return ok and #clients > 0
              end,
            '';
          }
        ];
        lualine_y = [
          {
            __unkeyed = "filetype";
            icon_only = true;
          }
          {
            __unkeyed = "filename";
            symbols = {
              modified = "";
              readonly = "👁️";
              unnamed = "";
            };
          }
        ];
        lualine_z = [
          {
            __unkeyed = "progress";
          }
          {
            _unkeyed = "location";
          }
        ];
      };
    };
  };
}
