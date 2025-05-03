{ pkgs, inputs, ... }:

{
  home.packages = [
    inputs.zen-browser.packages."${pkgs.system}".beta
    (pkgs.callPackage ../../pkgs/youtube-music { })
    (pkgs.callPackage ../../pkgs/tlauncher { })
    pkgs.amnezia-vpn
    pkgs.ayugram-desktop
    pkgs.vesktop
  ];
}
