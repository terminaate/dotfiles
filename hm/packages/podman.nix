{ pkgs, ... }:

{
  home.packages = with pkgs; [
    podman-compose
    podman-desktop
  ];
}
