{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "avante.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "yetone";
        repo = "avante.nvim";
        rev = "abe08d5283a78a4949dc5a2d597c9badb0642710";
        hash = "sha256-om2VlPhfJcHxklr+tacZ8xiqnlt8ehEkh7ZGakTiWeY=";
      };
    })
  ];

  extraConfigLua = ''
    require('avante').setup({
      provider = "claude",
    })
  '';
  keymaps = [
    {
      mode = "n";
      key = "co";
      action = ":AvanteConflictChooseOurs";
    }
    {
      mode = "n";
      key = "ct";
      action = ":AvanteConflictChooseTheirs";
    }
    {
      mode = "n";
      key = "cb";
      action = ":AvanteConflictChooseBooth";
    }
    {
      mode = "n";
      key = "cc";
      action = ":AvanteConflictChooseCursor";
    }
    {
      mode = "n";
      key = "c0";
      action = ":AvanteConflictChooseNone";
    }
    {
      mode = "n";
      key = "[x";
      action = ":AvanteConflictNextConflict";
    }
    {
      mode = "n";
      key = "]x";
      action = ":AvanteConflictPreviousConflict";
    }
  ];
}
