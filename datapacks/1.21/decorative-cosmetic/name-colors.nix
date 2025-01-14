{ pkgs, ... }:
pkgs.fetchurl rec {
  # pname = "name-colors";
  version = "1.0.8";
  # doesn't work because ??
  # name = "${pname}-${version}.zip";
  name = "name-colors-1.0.8.zip";
  url = "https://web.archive.org/web/20250114001123/https://vanillatweaks.net/download/VanillaTweaks_d816295_UNZIP_ME.zip";
  nativeBuildInputs = [ pkgs.unzip ];
  postFetch = ''
    unzip $out
    rm $out
    mv *.zip $out
  '';
  hash = "sha256-Dx4l7IzZ2wunF5nkHeLHtwUTCWqtQi7Yo/TGkVXB/28=";
}
