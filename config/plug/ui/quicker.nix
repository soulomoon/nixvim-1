{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "quicker.nvim";
      version = "1.0";
      src = pkgs.fetchFromGitHub {
        owner = "stevearc";
        repo = "quicker.nvim";
        rev = "183041a46d6c908eefb1c23ea02cce9c8f41256e";
        hash = "sha256-vhDXkE33NkiCs8PUB2PIzljaL15V3Ac62FRgnEZs06M=";
      };
    })
  ];

  extraConfigLua = ''
    require("quicker").setup()
  '';
}
