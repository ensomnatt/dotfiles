{
  description = "NixOS & Home Manager configuration (flake)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    matugen.url = "github:InioX/Matugen";
  };

  outputs = { self, nixpkgs, home-manager, matugen, ... }:
    let
      system = "x86_64-linux";
      host = "nixos-pc";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations."${host}" = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit pkgs;
          inherit (self) inputs;
        };

        modules = [
          ./hosts/nixos-pc/configuration.nix

          matugen.nixosModules.default
        ];
      };

      homeConfigurations = {
        ensomnatt = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          system = "x86_64-linux";

          extraSpecialArgs = {
            inherit (self) inputs;
          };

          modules = [
            ./hosts/nixos-pc/home.nix
          ];
        };
      };
    };
}
