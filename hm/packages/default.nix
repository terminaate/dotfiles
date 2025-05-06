{ ... }:

{
  imports = [
    ./base.nix
    ./dev.nix
    ./gnome.nix
    ./podman.nix
    # ./tauri.nix
    ./apps.nix
  ];
}
