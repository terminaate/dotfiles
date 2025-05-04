{ pkgs, ... }:

{
  # TODO: modularize these packages
  environment.systemPackages = with pkgs; [
    vscode
    git
    nixfmt-rfc-style
    gnome-tweaks
    htop
    pciutils
    nodejs_20
    python3
    lshw
    ntfs3g
    nil
    gpu-viewer

    # Gaming
    # angohud
    protonup-qt
    lutris
    bottles
    heroic

    # Hyprland packages
    kitty
    waybar
    rofi
    dunst
    swaybg
    swaylock-fancy
    swayidle
    pamixer
    light
    brillo
    font-awesome
  ];
}
