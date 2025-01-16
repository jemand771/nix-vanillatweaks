{ pkgs, mkDatapack, ... }:
{
  afk-display = pkgs.callPackage ./afk-display.nix { inherit mkDatapack; };
  anti-creeper-grief = pkgs.callPackage ./anti-creeper-grief.nix { inherit mkDatapack; };
  anti-enderman-grief = pkgs.callPackage ./anti-enderman-grief.nix { inherit mkDatapack; };
  anti-ghast-grief = pkgs.callPackage ./anti-ghast-grief.nix { inherit mkDatapack; };
  customizable-armor-stands = pkgs.callPackage ./customizable-armor-stands.nix { inherit mkDatapack; };
  double-shulker-shells = pkgs.callPackage ./double-shulker-shells.nix { inherit mkDatapack; };
  dragon-drops = pkgs.callPackage ./dragon-drops.nix { inherit mkDatapack; };
  gem-villagers = pkgs.callPackage ./gem-villagers.nix { inherit mkDatapack; };
  item-averages = pkgs.callPackage ./item-averages.nix { inherit mkDatapack; };
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
  villager-death-messages = pkgs.callPackage ./villager-death-messages.nix { inherit mkDatapack; };
  nether-portal-coords = pkgs.callPackage ./nether-portal-coords.nix { inherit mkDatapack; };
  count-mob-deaths = pkgs.callPackage ./count-mob-deaths.nix { inherit mkDatapack; };
  pillager-tools = pkgs.callPackage ./pillager-tools.nix { inherit mkDatapack; };
  coordinates-hud = pkgs.callPackage ./coordinates-hud.nix { inherit mkDatapack; };
  custom-villager-shops = pkgs.callPackage ./custom-villager-shops.nix { inherit mkDatapack; };
  spawning-spheres = pkgs.callPackage ./spawning-spheres.nix { inherit mkDatapack; };
  durability-ping = pkgs.callPackage ./durability-ping.nix { inherit mkDatapack; };
  player-head-drops = pkgs.callPackage ./player-head-drops.nix { inherit mkDatapack; };
  villager-workstation-highlights = pkgs.callPackage ./villager-workstation-highlights.nix { inherit mkDatapack; };
}
