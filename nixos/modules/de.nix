{ ... }:

{
  services.xserver = {
    enable = true;
    displayManager = {
      gdm.enable = true;
    };
    desktopManager = {
      gnome.enable = true;
    };
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;

  programs.zsh.enable = true;

  programs.hyprland.enable = true;
}
