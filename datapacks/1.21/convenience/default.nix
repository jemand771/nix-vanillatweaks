{ pkgs, mkDatapack, ... }:
{
  cauldron-concrete = pkgs.callPackage ./cauldron-concrete.nix { inherit mkDatapack; };
  cauldron-mud = pkgs.callPackage ./cauldron-mud.nix { inherit mkDatapack; };
  chunk-loaders = pkgs.callPackage ./chunk-loaders.nix { inherit mkDatapack; };
  double-shulker-shells = pkgs.callPackage ./double-shulker-shells.nix { inherit mkDatapack; };
  dragon-drops = pkgs.callPackage ./dragon-drops.nix { inherit mkDatapack; };
  elevators = pkgs.callPackage ./elevators.nix { inherit mkDatapack; };
  ender-chest-always-drops = pkgs.callPackage ./ender-chest-always-drops.nix { inherit mkDatapack; };
  fast-leaf-decay = pkgs.callPackage ./fast-leaf-decay.nix { inherit mkDatapack; };
  glass-always-drops = pkgs.callPackage ./glass-always-drops.nix { inherit mkDatapack; };
  more-effective-tools = pkgs.callPackage ./more-effective-tools.nix { inherit mkDatapack; };
  multiplayer-sleep = pkgs.callPackage ./multiplayer-sleep.nix { inherit mkDatapack; };
  redstone-rotation-wrench = pkgs.callPackage ./redstone-rotation-wrench.nix { inherit mkDatapack; };
  spectator-conduit-power = pkgs.callPackage ./spectator-conduit-power.nix { inherit mkDatapack; };
  spectator-night-vision = pkgs.callPackage ./spectator-night-vision.nix { inherit mkDatapack; };
  storm-channeling = pkgs.callPackage ./storm-channeling.nix { inherit mkDatapack; };
  terracotta-rotation-wrench = pkgs.callPackage ./terracotta-rotation-wrench.nix { inherit mkDatapack; };
  timber = pkgs.callPackage ./timber.nix { inherit mkDatapack; };
  unlock-all-recipes = pkgs.callPackage ./unlock-all-recipes.nix { inherit mkDatapack; };
}
