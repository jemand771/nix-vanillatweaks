{ pkgs, mkDatapack, ... }:
{
  back = pkgs.callPackage ./back.nix { inherit mkDatapack; };
  homes = pkgs.callPackage ./homes.nix { inherit mkDatapack; };
  spawn = pkgs.callPackage ./spawn.nix { inherit mkDatapack; };
  tpa = pkgs.callPackage ./tpa.nix { inherit mkDatapack; };
}
