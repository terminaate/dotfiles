{ ... }:

{
  imports = [
    ./de.nix
    ./network.nix
    ./packages.nix
    ./podman.nix
    ./sound.nix
    ./user.nix
    ./vpn.nix
    ./steam.nix
    # ./gpu.nix
    ./kdeconnect.nix
  ];
}
