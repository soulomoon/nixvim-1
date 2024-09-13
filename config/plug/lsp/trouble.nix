{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_preview = true;
      auto_fold = true;
      position = "right";
      width = 50;
    };
  };

  # plugins.fzf-lua = {
  #   enable = true;

  #   # files = {
  #   #   find_opts.__raw = "[[-type f -not -path '*.git/objects*' -not -path '*.env*']]";
  #   #   prompt = "Files❯ ";
  #   #   multiprocess = true;
  #   #   file_icons = true;
  #   #   color_icons = true;
  #   # };
  #   keymaps = {
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

  #     "<leader><leader>ff" = {
  #       action = "files";
  #       options = {
  #         desc = "Find project files";
  #       };
  #     };
  #   };




  # };
}
