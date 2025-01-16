{ pkgs, mkDatapack, ... }:
{
  decorative-cosmetic = pkgs.callPackage ./decorative-cosmetic { inherit mkDatapack; };
  convenience = pkgs.callPackage ./convenience { inherit mkDatapack; };
  gameplay-changes = pkgs.callPackage ./gameplay-changes { inherit mkDatapack; };
  informative = pkgs.callPackage ./informative { inherit mkDatapack; };
  teleport-commands = pkgs.callPackage ./teleport-commands { inherit mkDatapack; };
  admin-tools = pkgs.callPackage ./admin-tools { inherit mkDatapack; };
}
