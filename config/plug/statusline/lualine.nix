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
            name = "mode";
            icon = " ";
          }
        ];
        lualine_b = [
          {
            name = "branch";
            icon = "";
          }
          {
            name = "diff";
            extraConfig = {
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
            };

          }
        ];
        lualine_c = [
          {
            name = "diagnostic";
            extraConfig = {
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰝶 ";
              };
            };
          }
        ];
        lualine_x = [
          {
            name.__raw = ''
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
            name = "filetype";
            extraConfig = {
              icon_only = true;
            };
          }
          {
            name = "filename";
            extraConfig = {
              symbols = {
                modified = "";
                readonly = "👁️";
                unnamed = "";
              };
            };
          }
        ];
        lualine_z = [
          {
            name = "progress";
          }
          {
            name = "location";
          }
        ];
        options = {
          theme = "onedark";
        };
      };
    };
  };
}
