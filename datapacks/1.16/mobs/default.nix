{ pkgs, mkDatapack, ... }:
{
  anti-creeper-grief = pkgs.callPackage ./anti-creeper-grief.nix { inherit mkDatapack; };
  anti-enderman-grief = pkgs.callPackage ./anti-enderman-grief.nix { inherit mkDatapack; };
  anti-ghast-grief = pkgs.callPackage ./anti-ghast-grief.nix { inherit mkDatapack; };
  double-shulker-shells = pkgs.callPackage ./double-shulker-shells.nix { inherit mkDatapack; };
  bat-membranes = pkgs.callPackage ./bat-membranes.nix { inherit mkDatapack; };
  dragon-drops = pkgs.callPackage ./dragon-drops.nix { inherit mkDatapack; };
  larger-phantoms = pkgs.callPackage ./larger-phantoms.nix { inherit mkDatapack; };
  more-mob-heads = pkgs.callPackage ./more-mob-heads.nix { inherit mkDatapack; };
  silence-mobs = pkgs.callPackage ./silence-mobs.nix { inherit mkDatapack; };
  count-mob-deaths = pkgs.callPackage ./count-mob-deaths.nix { inherit mkDatapack; };
  villager-death-messages = pkgs.callPackage ./villager-death-messages.nix { inherit mkDatapack; };
}
