{ pkgs, mkDatapack, ... }:
{
  all = pkgs.callPackage ./all { inherit mkDatapack; };
}
