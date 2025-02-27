{
  description = "Vanillatweaks packages for nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      legacyPackages = {
        # craftingtweaks = ./craftingtweaks;
        datapacks = pkgs.callPackage ./datapacks {
          mkDatapack = { name, version, url, hash }: pkgs.fetchurl {
            inherit url hash version;
            pname = name;
            nativeBuildInputs = [ pkgs.unzip ];
            postFetch = ''
              unzip $out
              rm $out
              mv *.zip $out
              # unit tests 😎
              unzip -l $out | grep -q pack.mcmeta
            '';
            };
        };
        # resourcepacks = ./resourcepacks;
      };
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          (python3.withPackages (ps: with ps; [
            beautifulsoup4
            requests
            waybackpy
          ]))
        ];
      };
    });
}

# https://vanillatweaks.net/assets/resources/json/1.20/dpcategories.json?1736805174355=
