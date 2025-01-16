{ pkgs, mkDatapack, ... }:
{
  afk-display = pkgs.callPackage ./afk-display.nix { inherit mkDatapack; };
  coordinates-hud = pkgs.callPackage ./coordinates-hud.nix { inherit mkDatapack; };
  durability-ping = pkgs.callPackage ./durability-ping.nix { inherit mkDatapack; };
  nether-portal-coords = pkgs.callPackage ./nether-portal-coords.nix { inherit mkDatapack; };
  real-time-clock = pkgs.callPackage ./real-time-clock.nix { inherit mkDatapack; };
  spawning-spheres = pkgs.callPackage ./spawning-spheres.nix { inherit mkDatapack; };
  track-raw-statistics = pkgs.callPackage ./track-raw-statistics.nix { inherit mkDatapack; };
  track-statistics = pkgs.callPackage ./track-statistics.nix { inherit mkDatapack; };
  villager-death-messages = pkgs.callPackage ./villager-death-messages.nix { inherit mkDatapack; };
  villager-workstation-highlights = pkgs.callPackage ./villager-workstation-highlights.nix { inherit mkDatapack; };
  wandering-trader-announcements = pkgs.callPackage ./wandering-trader-announcements.nix { inherit mkDatapack; };
}
