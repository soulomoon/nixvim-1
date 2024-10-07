{ pkgs, ... }:
{
  # extraPlugins = with pkgs.vimPlugins; [
  #    nui-nvim
  # ];
  plugins.noice = {
    enable = true;
    notify = {
      enabled = true;
    };
    messages = {
      enabled = true; # Adds a padding-bottom to neovim statusline when set to false for some reason
    };
    lsp = {
      message = {
        enabled = true;
      };
      progress = {
        enabled = true;
        # view = "mini";
      };
      hover = {
        enabled = true;
      };
      override = {
        "vim.lsp.util.stylize_markdown" = true;
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
      };
    };
    popupmenu = {
      enabled = true;
      backend = "nui";
    };
    format = {
      filter = {
        pattern = [
          ":%s*%%s*s:%s*"
          ":%s*%%s*s!%s*"
          ":%s*%%s*s/%s*"
          "%s*s:%s*"
          ":%s*s!%s*"
          ":%s*s/%s*"
        ];
        icon = "";
        lang = "regex";
      };
      replace = {
        pattern = [
          ":%s*%%s*s:%w*:%s*"
          ":%s*%%s*s!%w*!%s*"
          ":%s*%%s*s/%w*/%s*"
          "%s*s:%w*:%s*"
          ":%s*s!%w*!%s*"
          ":%s*s/%w*/%s*"
        ];
        icon = "󱞪";
        lang = "regex";
      };
    };
  };
}
