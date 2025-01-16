{ pkgs, mkDatapack, ... }:
{
  gem-villagers = pkgs.callPackage ./gem-villagers.nix { inherit mkDatapack; };
  treasure-gems = pkgs.callPackage ./treasure-gems.nix { inherit mkDatapack; };
  wandering-trades = pkgs.callPackage ./wandering-trades.nix { inherit mkDatapack; };
  wandering-trades-hermit-edition = pkgs.callPackage ./wandering-trades-hermit-edition.nix { inherit mkDatapack; };
  tag = pkgs.callPackage ./tag.nix { inherit mkDatapack; };
  thunder-shrine = pkgs.callPackage ./thunder-shrine.nix { inherit mkDatapack; };
}
