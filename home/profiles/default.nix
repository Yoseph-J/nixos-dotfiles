{
  self,
  inputs,
  ...
}: let
  extraSpecialArgs = {inherit inputs self;};

  homeImports = {
    "joseph@alpha" = [
      ../.
      ./alpha
    ];
  };

  inherit (inputs.hm.lib) homeManagerConfiguration;

  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in {
  _module.args = {inherit homeImports;};

  flake = {
    homeConfigurations = {
      "joseph_alpha" = homeManagerConfiguration {
        modules = homeImports."joseph@alpha";
        inherit pkgs extraSpecialArgs;
      };
    };
  };
} 
