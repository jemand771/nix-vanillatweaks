{ pkgs, mkDatapack, ... }:
{
  timber = pkgs.callPackage ./timber.nix { inherit mkDatapack; };
  xp-management = pkgs.callPackage ./xp-management.nix { inherit mkDatapack; };
  chunk-loaders = pkgs.callPackage ./chunk-loaders.nix { inherit mkDatapack; };
  confetti-creepers = pkgs.callPackage ./confetti-creepers.nix { inherit mkDatapack; };
  elevators = pkgs.callPackage ./elevators.nix { inherit mkDatapack; };
}