{ pkgs, ... }:
pkgs.fetchurl rec {
  # pname = "name-colors";
  version = "2.15.0";
  # doesn't work because ??
  # name = "${pname}-${version}.zip";
  name = "more-mob-heads-2.15.0.zip";
  url = "https://web.archive.org/web/20250114001113/https://vanillatweaks.net/download/VanillaTweaks_d239908_UNZIP_ME.zip";
  nativeBuildInputs = [ pkgs.unzip ];
  postFetch = ''
    unzip $out
    rm $out
    mv *.zip $out
  '';
  hash = "sha256-EnKYrkPAB969kvN110ROjNG3T+yUtsSN3DGS/MaOD58=";
}
