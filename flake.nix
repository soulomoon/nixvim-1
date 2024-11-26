{
  description = "Elyth's NeoVim configuration";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs/71e91c409d1e654808b2621f28a327acfdad8dc2";
    # nixpkgs.url = "github:nixos/nixpkgs/71e91c409d1e654808b2621f28a327acfdad8dc2";
    # nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim/8b19d154823619af7ced464185e8d13ec80a758b";
      # inputs.nixpkgs.follows = "nixpkgs";
    };
    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      nixvim,
      flake-parts,
      pre-commit-hooks,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      perSystem =
        {
          system,
          pkgs,
          self',
          lib,
          ...
        }:
        let
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./config;
          };
        in
        {
          checks = {
            pre-commit-check = pre-commit-hooks.lib.${system}.run {
              src = ./.;
              hooks = {
                statix.enable = true;
                nixfmt = {
                  enable = true;
                  package = pkgs.nixfmt-rfc-style;
                };
              };
            };
          };

          formatter = pkgs.nixfmt-rfc-style;

          packages.default = nvim;

          devShells = {
            default = with pkgs; mkShell { inherit (self'.checks.pre-commit-check) shellHook; };
          };
        };
    };
}
