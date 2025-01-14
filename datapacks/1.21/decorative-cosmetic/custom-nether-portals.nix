{ pkgs, ... }:
pkgs.fetchurl rec {
  # pname = "name-colors";
  version = "2.3.13";
  # doesn't work because ??
  # name = "${pname}-${version}.zip";
  name = "custom-nether-portals-2.3.13.zip";
  url = "https://web.archive.org/web/20250114000928/https://vanillatweaks.net/download/VanillaTweaks_d123011_UNZIP_ME.zip";
  nativeBuildInputs = [ pkgs.unzip ];
  postFetch = ''
    unzip $out
    rm $out
    mv *.zip $out
  '';
  hash = "sha256-Wj3FiJ1YPlNuL1RziZiwhSZRc0KdSiGYIsynDfAYC4Q=";
}
