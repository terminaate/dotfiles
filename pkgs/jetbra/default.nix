{
  stdenv,
  fetchzip,
  lib,
}:

let
  jbProducts = [
    "idea"
    "clion"
    "phpstorm"
    "goland"
    "pycharm"
    "webstorm"
    "webide"
    "rider"
    "datagrip"
    "rubymine"
    "dataspell"
    "aqua"
    "rustrover"
    "gateway"
    "jetbrains_client"
    "jetbrainsclient"
    "studio"
    "devecostudio"
  ];

in
stdenv.mkDerivation {
  pname = "jetbra-patcher";
  version = "1.0";

  src = fetchzip {
    url = "https://ipfs.io/ipfs/bafybeih65no5dklpqfe346wyeiak6wzemv5d7z2ya7nssdgwdz4xrmdu6i/files/jetbra-8f6785eac5e6e7e8b20e6174dd28bb19d8da7550.zip";
    sha256 = "sha256-xbuwTktKVRyzH2RwWUCS87i0/sz5fTgGoa+gKKLk3nI=";
    stripRoot = false;
  };

  installPhase = ''
        mkdir -p $out/share/jetbra

        cp -r * $out/share/jetbra/

        # Create dynamic shell script for vmoptions
        mkdir -p $out/env
        cat > $out/env/jetbrains.vmoptions.sh <<EOF
    #!/bin/sh
    export JAVA_AGENT="-javaagent:$out/share/jetbra/ja-netfilter.jar=jetbrains"
    EOF
  '';

  postInstall = lib.concatStringsSep "\n" (
    map (
      prd:
      let
        upper = lib.toUpper prd;
      in
      if prd == "webstorm" then
        "export WEBSTORM_VM_OPTIONS=\"$out/share/jetbra/vmoptions/webstorm.vmoptions\""
      else
        "echo 'export ${upper}_VM_OPTIONS=\"$out/share/jetbra/vmoptions/${prd}.vmoptions\"' >> $out/env/jetbrains.vmoptions.sh"
    ) jbProducts
  );
}
