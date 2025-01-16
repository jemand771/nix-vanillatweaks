{ pkgs, mkDatapack, ... }:
{
  "1.13" = pkgs.callPackage ./1.13 { inherit mkDatapack; };
  "1.14" = pkgs.callPackage ./1.14 { inherit mkDatapack; };
  "1.15" = pkgs.callPackage ./1.15 { inherit mkDatapack; };
  "1.16" = pkgs.callPackage ./1.16 { inherit mkDatapack; };
  "1.17" = pkgs.callPackage ./1.17 { inherit mkDatapack; };
  "1.18" = pkgs.callPackage ./1.18 { inherit mkDatapack; };
  "1.19" = pkgs.callPackage ./1.19 { inherit mkDatapack; };
  "1.20" = pkgs.callPackage ./1.20 { inherit mkDatapack; };
  "1.21" = pkgs.callPackage ./1.21 { inherit mkDatapack; };
}
