{

  plugins.rainbow-delimiters = {
    enable = true;
  };
  extraConfigLua = ''
    local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
    }
    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)

    vim.g.rainbow_delimiters = { highlight = highlight }
    require("ibl").setup { scope = { highlight = highlight } }

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  '';
  plugins.alpha =
    let
      nixFlake = [
        "                                          "
        " ▓█████  ██▓   ▓██   ██▓▄▄▄█████▓ ██░ ██  "
        " ▓█   ▀ ▓██▒    ▒██  ██▒▓  ██▒ ▓▒▓██░ ██▒ "
        " ▒███   ▒██░     ▒██ ██░▒ ▓██░ ▒░▒██▀▀██░ "
        " ▒▓█  ▄ ▒██░     ░ ▐██▓░░ ▓██▓ ░ ░▓█ ░██  "
        " ░▒████▒░██████▒ ░ ██▒▓░  ▒██▒ ░ ░▓█▒░██▓ "
        " ░░ ▒░ ░░ ▒░▓  ░  ██▒▒▒   ▒ ░░    ▒ ░░▒░▒ "
        "  ░ ░  ░░ ░ ▒  ░▓██ ░▒░     ░     ▒ ░▒░ ░ "
        "    ░     ░ ░   ▒ ▒ ░░    ░       ░  ░░ ░ "
        "    ░  ░    ░  ░░ ░               ░  ░  ░ "
        "                ░ ░                       "
        "                                          "
        "           git@github.com:elythh          "
      ];
    in
    {
      enable = false;
      layout = [
        {
          type = "padding";
          val = 4;
        }
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = nixFlake;
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val =
            let
              mkButton = shortcut: cmd: val: hl: {
                type = "button";
                inherit val;
                opts = {
                  inherit hl shortcut;
                  keymap = [
                    "n"
                    shortcut
                    cmd
                    { }
                  ];
                  position = "center";
                  cursor = 0;
                  width = 40;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              };
            in
            [
              (mkButton "f" "<CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>" "🔍 Find File"
                "Operator"
              )
              (mkButton "q" "<CMD>qa<CR>" "💣 Quit Neovim" "String")
            ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "GruvboxBlue";
            position = "center";
          };
          type = "text";
          val = "https://github.com/elythh/nixvim";
        }
      ];
    };
}
