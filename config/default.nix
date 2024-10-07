{ config, lib, ... }:
{
  imports = [
    #./plug/ui/precognition.nix
    #./plug/utils/harpoon.nix
    #./plug/statusline/staline.nix
    ./autocommands.nix
    ./keys.nix
    ./sets.nix
    ./highlight.nix
    ./neo-tree.nix

    ./plug/colorscheme/biscuit.nix
    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/cmp.nix
    ./plug/completion/copilot-cmp.nix
    ./plug/completion/lspkind.nix
    ./plug/completion/schemastore.nix

    ./plug/git/gitlinker.nix
    ./plug/git/gitsigns.nix
    ./plug/git/lazygit.nix
    ./plug/git/worktree.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/snippets/luasnip.nix

    ./plug/statusline/lualine.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui/alpha.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/indent-blankline.nix
    ./plug/ui/noice.nix
    ./plug/ui/nvim-notify.nix
    ./plug/ui/telescope.nix
    ./plug/ui/nvim-bqf.nix
    ./plug/ui/fzf-lua.nix
    ./plug/ui/quicker.nix

    ./plug/utils/comment.nix
    ./plug/utils/comment-box.nix
    ./plug/utils/copilot.nix
    ./plug/utils/flash.nix
    ./plug/utils/grapple.nix
    ./plug/utils/hardtime.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/markview.nix
    ./plug/utils/mini.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/utils/obsidian.nix
    # ./plug/utils/oil.nix
    ./plug/utils/ufo.nix
    ./plug/utils/toggleterm.nix
    ./plug/utils/undotree.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/yaml-companion.nix
    ./plug/utils/bufdelete.nix
  ];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "onedark";
      type = lib.types.enum [
        "onedark"
        "paradise"
        "decay"
        "edge-dark"
        "mountain"
        "tokyonight"
        "everforest"
        "everblush"
        "jellybeans"
        "aquarium"
        "gruvbox"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "onedark";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
