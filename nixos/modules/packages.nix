{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vscode
    git
    nixfmt-rfc-style
    gnome-tweaks
    htop
    pciutils
    nodejs_20
    git-credential-manager
    python3

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
