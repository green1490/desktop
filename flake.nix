{
  description = "NixOS setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      # follows channel version
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, silentSDDM }: let
    system = "x86_64-linux";
    
    in {
    nixosConfigurations.rebecca = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit silentSDDM; };
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.green1490 = ./home.nix;
          home-manager.extraSpecialArgs = {
            inherit zen-browser;
          };
        }
      ];
    };
  };
}
