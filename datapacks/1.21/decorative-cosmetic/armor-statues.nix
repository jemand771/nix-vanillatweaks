{ pkgs, ... }:
pkgs.fetchurl rec {
  # pname = "name-colors";
  version = "2.8.15";
  # doesn't work because ??
  # name = "${pname}-${version}.zip";
  name = "armor-statues-2.8.15.zip";
  url = "https://web.archive.org/web/20250114000501/https://vanillatweaks.net/download/VanillaTweaks_d917082_UNZIP_ME.zip";
  nativeBuildInputs = [ pkgs.unzip ];
  postFetch = ''
    unzip $out
    rm $out
    mv *.zip $out
  '';
  hash = "sha256-3p2LUw07zdoiN5xHubC8elHf+FPDKFnSh3N12E4MWdk=";
}
