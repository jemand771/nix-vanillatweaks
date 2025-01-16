{ pkgs, mkDatapack, ... }:
{
  custom-villager-shops = pkgs.callPackage ./custom-villager-shops.nix { inherit mkDatapack; };
  kill-empty-boats = pkgs.callPackage ./kill-empty-boats.nix { inherit mkDatapack; };
}
