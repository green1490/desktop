{
  description = "NixOS setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      # follows channel version
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
    silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, silentSDDM }: {
    nixosConfigurations = {
      rebecca = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit silentSDDM; };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.green1490 = ./home.nix;
            home-manager.extraSpecialArgs = { inherit zen-browser; };
          }
        ];
      };
    };
  };
}
