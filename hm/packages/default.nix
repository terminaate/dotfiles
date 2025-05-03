{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    tree
    nix-output-monitor
    glow
    inputs.zen-browser.packages."${pkgs.system}".beta
    amnezia-vpn
    ayugram-desktop
    gnomeExtensions.blur-my-shell
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.clipboard-indicator
    vesktop
    podman-desktop
    podman-compose
    jetbrains.webstorm
    gparted
    pnpm
    (pkgs.callPackage ../../pkgs/youtube-music { })
    (pkgs.callPackage ../../pkgs/tlauncher { })
  ];
}
