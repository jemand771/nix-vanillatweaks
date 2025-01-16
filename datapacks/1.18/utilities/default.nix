{ pkgs, mkDatapack, ... }:
{
  name-colors = pkgs.callPackage ./name-colors.nix { inherit mkDatapack; };
  custom-villager-shops = pkgs.callPackage ./custom-villager-shops.nix { inherit mkDatapack; };
  spawning-spheres = pkgs.callPackage ./spawning-spheres.nix { inherit mkDatapack; };
  spectator-night-vision = pkgs.callPackage ./spectator-night-vision.nix { inherit mkDatapack; };
  spectator-conduit-power = pkgs.callPackage ./spectator-conduit-power.nix { inherit mkDatapack; };
  item-averages = pkgs.callPackage ./item-averages.nix { inherit mkDatapack; };
  kill-empty-boats = pkgs.callPackage ./kill-empty-boats.nix { inherit mkDatapack; };
}
