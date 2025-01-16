{ pkgs, mkDatapack, ... }:
{
  armor-statues = pkgs.callPackage ./armor-statues.nix { inherit mkDatapack; };
  unlock-all-recipes = pkgs.callPackage ./unlock-all-recipes.nix { inherit mkDatapack; };
  fast-leaf-decay = pkgs.callPackage ./fast-leaf-decay.nix { inherit mkDatapack; };
  afk-display = pkgs.callPackage ./afk-display.nix { inherit mkDatapack; };
  multiplayer-sleep = pkgs.callPackage ./multiplayer-sleep.nix { inherit mkDatapack; };
  graves = pkgs.callPackage ./graves.nix { inherit mkDatapack; };
  custom-nether-portals = pkgs.callPackage ./custom-nether-portals.nix { inherit mkDatapack; };
  durability-ping = pkgs.callPackage ./durability-ping.nix { inherit mkDatapack; };
  cauldron-concrete = pkgs.callPackage ./cauldron-concrete.nix { inherit mkDatapack; };
  track-raw-statistics = pkgs.callPackage ./track-raw-statistics.nix { inherit mkDatapack; };
  track-statistics = pkgs.callPackage ./track-statistics.nix { inherit mkDatapack; };
  nether-portal-coords = pkgs.callPackage ./nether-portal-coords.nix { inherit mkDatapack; };
  coordinates-hud = pkgs.callPackage ./coordinates-hud.nix { inherit mkDatapack; };
  classic-fishing-loot = pkgs.callPackage ./classic-fishing-loot.nix { inherit mkDatapack; };
  real-time-clock = pkgs.callPackage ./real-time-clock.nix { inherit mkDatapack; };
  villager-workstation-highlights = pkgs.callPackage ./villager-workstation-highlights.nix { inherit mkDatapack; };
  pillager-tools = pkgs.callPackage ./pillager-tools.nix { inherit mkDatapack; };
}
