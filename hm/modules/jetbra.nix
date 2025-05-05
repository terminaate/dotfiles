{ config, pkgs, ... }:

let
  jetbra = pkgs.callPackage ../../pkgs/jetbra { };

in
{
  home.file.".jetbrains.vmoptions.sh".source = "${jetbra}/env/jetbrains.vmoptions.sh";

  home.file.".profile".text = ''
    ___MY_VMOPTIONS_SHELL_FILE="\$HOME/.jetbrains.vmoptions.sh"
    if [ -f "\$___MY_VMOPTIONS_SHELL_FILE" ]; then
      . "\$___MY_VMOPTIONS_SHELL_FILE"
    fi
  '';

  home.file.".config/plasma-workspace/env/jetbrains.vmoptions.sh".source =
    "${jetbra}/env/jetbrains.vmoptions.sh";
}
