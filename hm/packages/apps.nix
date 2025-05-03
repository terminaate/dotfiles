{ pkgs, ... }:

{
  home.packages = [
    (pkgs.callPackage ../../pkgs/youtube-music { })
    (pkgs.callPackage ../../pkgs/tlauncher { })
    pkgs.amnezia-vpn
    pkgs.ayugram-desktop
    pkgs.vesktop
  ];
}
