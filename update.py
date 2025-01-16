import base64
import hashlib
import io
import json
from pathlib import Path
import re
from zipfile import ZipFile

from bs4 import BeautifulSoup
import requests
from waybackpy import WaybackMachineSaveAPI


def get_datapack_versions():
    r = requests.get("https://vanillatweaks.net/picker/datapacks/")
    r.raise_for_status()
    soup = BeautifulSoup(r.content, "html.parser")
    return [elem.text for elem in soup.find(id="versions").findAll("p")]


def update_datapacks():
    print("fetching datapacks")
    versions = get_datapack_versions()
    write_callpackage_mapping(
        Path("datapacks/default.nix"),
        versions,
        quote_keys=True,
    )
    for version in versions:
        update_datapack_version(version)


def update_datapack_version(game_version: str):
    print("fetching datapacks for", game_version)
    r = requests.get(f"https://vanillatweaks.net/assets/resources/json/{game_version}/dpcategories.json")
    r.raise_for_status()
    data = r.json()
    write_callpackage_mapping(
        Path(f"datapacks/{game_version}/default.nix"),
        [sanetize_name(category["category"]) for category in data["categories"]]
    )
    for category in data["categories"]:
        update_datapack_category(
            game_version=game_version,
            category_data=category,
        )


def update_datapack_category(game_version, category_data: dict):
    name = sanetize_name(category_data["category"])
    print("fetching datapack category", name, "for", game_version)
    write_callpackage_mapping(
        Path(f"datapacks/{game_version}/{name}/default.nix"),
        [sanetize_name(pack["name"]) for pack in category_data["packs"]],
        suffix=".nix"
    )
    for pack in category_data["packs"]:
        update_datapack_pack(
            game_version=game_version,
            pack_data=pack,
            category_name=name,
        )


def update_datapack_pack(game_version: str, pack_data: dict, category_name: str):
    name = sanetize_name(pack_data["name"])
    print("fetching datapack", category_name, "/", name, "for", game_version)
    version = pack_data["version"]
    nix_file = Path(f"datapacks/{game_version}/{category_name}/{name}.nix")
    existing_version = read_nix_file_attribute(nix_file, "version")
    url = None
    hash = None
    if version == existing_version:
        url = read_nix_file_attribute(nix_file, "url")
        if url is not None:
            hash = read_nix_file_attribute(nix_file, "hash")
    if url is None:
        url = make_url_stable(
            get_datapack_download_url(
                game_version=game_version,
                category_name=category_name,
                pack_name=pack_data["name"],
            )
        )
    if hash is None:
        hash = calculate_hash(url)
    write_pack_nix_file(
        nix_file=nix_file,
        name=name,
        version=version,
        url=url,
        hash=hash,
    )


def read_nix_file_attribute(nix_file: Path, attribute: str) -> str:
    if not nix_file.is_file():
        return None
    return re.search(
        rf"{attribute} = \"([^\"]+)\";",
        nix_file.read_text()
    ).group(1)


def write_pack_nix_file(nix_file: Path, name: str, version: str, url: str, hash: str):
    nix_file.write_text(f"""{{ mkDatapack, ... }}:
mkDatapack {{
  version = "{version}";
  name = "{name}";
  url = "{url}";
  hash = "{hash}";
}}
""")


def get_datapack_download_url(game_version: str, category_name: str, pack_name: str):
    form_data = dict(
        packs=json.dumps({
            category_name: [
                pack_name
            ]
        }),
        version=game_version,
    )
    r = requests.post(
        "https://vanillatweaks.net/assets/server/zipdatapacks.php",
        data=form_data
    )
    r.raise_for_status()
    j = r.json()
    if j.get("status") != "success":
        raise RuntimeError(r.get("status"))
    return "https://vanillatweaks.net" + j["link"]


def calculate_hash(url: str) -> str:
    print("calculating SRI for", url)
    r = requests.get(url)
    r.raise_for_status()
    with ZipFile(io.BytesIO(r.content)) as z:
        inner_bytes = z.read(z.namelist()[0])
    # TODO content assertion - needs to be packtype-agnostic
    # with ZipFile(io.BytesIO(inner_bytes)) as z:
    #     assert "pack.mcmeta" in z.namelist()
    sha256 = hashlib.sha256(inner_bytes).digest()
    encoded = base64.b64encode(sha256).decode("utf-8")
    sri = f"sha256-{encoded}"
    print("->", sri)
    return sri


def make_url_stable(url: str) -> str:
    print("stabilizing url", url, "via wayback machine")
    result = WaybackMachineSaveAPI(url).save()
    print(result)
    return result


def write_callpackage_mapping(file: Path, entries: list[str], quote_keys: bool=False, suffix: str=""):
    q = '"' if quote_keys else ""
    file.parent.mkdir(parents=True, exist_ok=True)
    file.write_text(f"""{{ pkgs, mkDatapack, ... }}:
{{
{"\n".join(
    f'  {q}{entry}{q} = pkgs.callPackage ./{entry}{suffix} {{ inherit mkDatapack; }};'
    for entry in entries
)}
}}
""")


def sanetize_name(name: str) -> str:
    return name.lower().replace(" ", "-").replace("/", "-")


def main():
    update_datapacks()


if __name__ == "__main__":
    main()
