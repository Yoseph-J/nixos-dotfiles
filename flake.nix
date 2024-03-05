{
  description = "My NixOS Flake Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {self, nixpkgs}@inputs:
  {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86-64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
