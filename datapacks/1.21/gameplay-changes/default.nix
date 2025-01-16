{ pkgs, mkDatapack, ... }:
{
  anti-creeper-grief = pkgs.callPackage ./anti-creeper-grief.nix { inherit mkDatapack; };
  anti-enderman-grief = pkgs.callPackage ./anti-enderman-grief.nix { inherit mkDatapack; };
  anti-ghast-grief = pkgs.callPackage ./anti-ghast-grief.nix { inherit mkDatapack; };
  armored-elytra = pkgs.callPackage ./armored-elytra.nix { inherit mkDatapack; };
  bat-membranes = pkgs.callPackage ./bat-membranes.nix { inherit mkDatapack; };
  classic-fishing-loot = pkgs.callPackage ./classic-fishing-loot.nix { inherit mkDatapack; };
  confetti-creepers = pkgs.callPackage ./confetti-creepers.nix { inherit mkDatapack; };
  graves = pkgs.callPackage ./graves.nix { inherit mkDatapack; };
  husks-drop-sand = pkgs.callPackage ./husks-drop-sand.nix { inherit mkDatapack; };
  silk-touch-budding-amethyst = pkgs.callPackage ./silk-touch-budding-amethyst.nix { inherit mkDatapack; };
  xp-bottling = pkgs.callPackage ./xp-bottling.nix { inherit mkDatapack; };
}
