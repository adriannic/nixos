{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags.url = "github:Aylur/ags";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      inherit (self) outputs;
    in
    {
      packages = import ./pkgs nixpkgs.legacyPackages.x86_64-linux;
      formatter = nixpkgs.legacyPackages.x86_64-linux.alejandra;
      overlays = import ./overlays {inherit inputs;};
      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home-manager;
      nixosConfigurations = {
        vm = nixpkgs.lib.nixosSystem {
	  specialArgs = {inherit inputs outputs;};
	  modules = [
	    ./nixos/vm/configuration.nix
	  ];
	};
      };
      homeConfigurations = {
        "adriannic@vm" = home-manager.lib.homeManagerConfiguration {
	  pkgs = nixpkgs.legacyPackages.x86_64-linux;
	  extraSpecialArgs = {inherit inputs outputs;};
	  modules = [
	   ./home-manager/adriannic/home.nix
	  ];
	};
      };
    };
}
