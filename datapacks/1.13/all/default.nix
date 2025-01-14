{ pkgs, mkDatapack, ... }:
{
  afk-display = pkgs.callPackage ./afk-display.nix { inherit mkDatapack; };
  anti-creeper-grief = pkgs.callPackage ./anti-creeper-grief.nix { inherit mkDatapack; };
  anti-enderman-grief = pkgs.callPackage ./anti-enderman-grief.nix { inherit mkDatapack; };
  anti-ghast-grief = pkgs.callPackage ./anti-ghast-grief.nix { inherit mkDatapack; };
  customizable-armor-stands = pkgs.callPackage ./customizable-armor-stands.nix { inherit mkDatapack; };
  double-shulker-shells = pkgs.callPackage ./double-shulker-shells.nix { inherit mkDatapack; };
  dragon-drops-elytra = pkgs.callPackage ./dragon-drops-elytra.nix { inherit mkDatapack; };
  gem-villagers = pkgs.callPackage ./gem-villagers.nix { inherit mkDatapack; };
  item-averages = pkgs.callPackage ./item-averages.nix { inherit mkDatapack; };
  kill-cod = pkgs.callPackage ./kill-cod.nix { inherit mkDatapack; };
  kill-empty-boats = pkgs.callPackage ./kill-empty-boats.nix { inherit mkDatapack; };
  larger-phantoms = pkgs.callPackage ./larger-phantoms.nix { inherit mkDatapack; };
  more-mob-heads = pkgs.callPackage ./more-mob-heads.nix { inherit mkDatapack; };
  redstone-rotation-wrench = pkgs.callPackage ./redstone-rotation-wrench.nix { inherit mkDatapack; };
  silence-mobs = pkgs.callPackage ./silence-mobs.nix { inherit mkDatapack; };
  tag = pkgs.callPackage ./tag.nix { inherit mkDatapack; };
  terracotta-rotation-wrench = pkgs.callPackage ./terracotta-rotation-wrench.nix { inherit mkDatapack; };
  thunder-shrine = pkgs.callPackage ./thunder-shrine.nix { inherit mkDatapack; };
  track-raw-statistics = pkgs.callPackage ./track-raw-statistics.nix { inherit mkDatapack; };
  track-statistics = pkgs.callPackage ./track-statistics.nix { inherit mkDatapack; };
  treasure-gems = pkgs.callPackage ./treasure-gems.nix { inherit mkDatapack; };
  nether-portal-coords = pkgs.callPackage ./nether-portal-coords.nix { inherit mkDatapack; };
  count-mob-deaths = pkgs.callPackage ./count-mob-deaths.nix { inherit mkDatapack; };
}