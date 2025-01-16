{ pkgs, mkDatapack, ... }:
{
  armor-statues = pkgs.callPackage ./armor-statues.nix { inherit mkDatapack; };
  custom-nether-portals = pkgs.callPackage ./custom-nether-portals.nix { inherit mkDatapack; };
  mini-blocks = pkgs.callPackage ./mini-blocks.nix { inherit mkDatapack; };
  more-mob-heads = pkgs.callPackage ./more-mob-heads.nix { inherit mkDatapack; };
  name-colors = pkgs.callPackage ./name-colors.nix { inherit mkDatapack; };
  player-head-drops = pkgs.callPackage ./player-head-drops.nix { inherit mkDatapack; };
  silence-mobs = pkgs.callPackage ./silence-mobs.nix { inherit mkDatapack; };
  wandering-trades = pkgs.callPackage ./wandering-trades.nix { inherit mkDatapack; };
  wandering-trades-hermit-edition = pkgs.callPackage ./wandering-trades-hermit-edition.nix { inherit mkDatapack; };
}
