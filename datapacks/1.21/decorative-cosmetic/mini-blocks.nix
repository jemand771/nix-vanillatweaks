{ pkgs, ... }:
pkgs.fetchurl rec {
  # pname = "name-colors";
  version = "1.1.0";
  # doesn't work because ??
  # name = "${pname}-${version}.zip";
  name = "mini-blocks-1.1.0.zip";
  url = "https://web.archive.org/web/20250114001031/https://vanillatweaks.net/download/VanillaTweaks_d628362_UNZIP_ME.zip";
  nativeBuildInputs = [ pkgs.unzip ];
  postFetch = ''
    unzip $out
    rm $out
    mv *.zip $out
  '';
  hash = "sha256-FpEg9QaTodeLeWWqeMzo0Kqj+IjVK8TNeaRXoijkCnU=";
}
