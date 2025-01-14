{ pkgs, ... }:
{
  armor-statues = pkgs.callPackage ./armor-statues.nix {};
  custom-nether-portals = pkgs.callPackage ./custom-nether-portals.nix {};
  mini-blocks = pkgs.callPackage ./mini-blocks.nix {};
  more-mob-heads = pkgs.callPackage ./more-mob-heads.nix {};
  name-colors = pkgs.callPackage ./name-colors.nix {};
  player-head-drops = pkgs.callPackage ./player-head-drops.nix {};
  silence-mobs = pkgs.callPackage ./silence-mobs.nix {};
  wandering-trades = pkgs.callPackage ./wandering-trades.nix {};
  wandering-trades-hermit-edition = pkgs.callPackage ./wandering-trades-hermit-edition.nix {};
}