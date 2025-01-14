{ pkgs, ... }:
{
  decorative-cosmetic = pkgs.callPackage ./decorative-cosmetic {};
  convenience = pkgs.callPackage ./convenience {};
  gameplay-changes = pkgs.callPackage ./gameplay-changes {};
  informative = pkgs.callPackage ./informative {};
  teleport-commands = pkgs.callPackage ./teleport-commands {};
  admin-tools = pkgs.callPackage ./admin-tools {};
}