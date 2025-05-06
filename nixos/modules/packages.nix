{ pkgs, ... }:

{
  # TODO: modularize these packages
  environment.systemPackages = with pkgs; [
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
    libuuid

    # Gaming
    protonup-qt
    lutris
    bottles

    # Hyprland packages
    # kitty
    # waybar
    # rofi
    # dunst
    # swaybg
    # swaylock-fancy
    # swayidle
    # pamixer
    # light
    # brillo
    # font-awesome
  ];

  environment.variables = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [ pkgs.libuuid ];
  };
}
