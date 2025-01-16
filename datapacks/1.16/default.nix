{ pkgs, mkDatapack, ... }:
{
  survival = pkgs.callPackage ./survival { inherit mkDatapack; };
  items = pkgs.callPackage ./items { inherit mkDatapack; };
  mobs = pkgs.callPackage ./mobs { inherit mkDatapack; };
  teleportation = pkgs.callPackage ./teleportation { inherit mkDatapack; };
  utilities = pkgs.callPackage ./utilities { inherit mkDatapack; };
  hermitcraft = pkgs.callPackage ./hermitcraft { inherit mkDatapack; };
  experimental = pkgs.callPackage ./experimental { inherit mkDatapack; };
}
