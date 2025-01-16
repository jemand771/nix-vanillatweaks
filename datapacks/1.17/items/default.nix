{ pkgs, mkDatapack, ... }:
{
  redstone-rotation-wrench = pkgs.callPackage ./redstone-rotation-wrench.nix { inherit mkDatapack; };
  terracotta-rotation-wrench = pkgs.callPackage ./terracotta-rotation-wrench.nix { inherit mkDatapack; };
  armored-elytra = pkgs.callPackage ./armored-elytra.nix { inherit mkDatapack; };
  player-head-drops = pkgs.callPackage ./player-head-drops.nix { inherit mkDatapack; };
}
