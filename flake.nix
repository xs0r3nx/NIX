{
  description = "My Basic Flake!";


  inputs = {
      nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
      home-manager = {
            url = "github:nix-community/home-manager?ref=release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
      };
      nixvim = {
      url = "github:nix-community/nixvim?ref=nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
     };
  };
  outputs = {nixpkgs, home-manager, ...} @inputs : { 
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
	    modules = [./configuration.nix];

      };
      homeConfigurations.s0r3n = home-manager.lib.homeManagerConfiguration {
            extraSpecialArgs = { inherit inputs;};
	   pkgs = nixpkgs.legacyPackages."x86_64-linux";
	   modules = [./home.nix];

      };

  };
}
