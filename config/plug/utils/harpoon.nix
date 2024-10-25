{ pkgs, ... }:
{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymaps = {
      addFile = "<leader>a";
      navFile = {
        "1" = "<leader>1";
        "2" = "<leader>2";
        "3" = "<leader>3";
        "4" = "<leader>4";
      };
      navNext = "<leader>j";
      navPrev = "<leader>k";
      # toggleQuickMenu = "<leader>h";
      # gotoTerminal = {
      #   "1" = "<C-j>";
      #   "2" = "<C-k>";
      #   "3" = "<C-l>";
      #   "4" = "<C-m>";
      # };
      # tmuxGotoTerminal = {
      #   "1" = "<C-1>";
      #   "2" = "<C-2>";
      #   "{down-of}" = "<leader>G";
      # };
    };
  };
}
