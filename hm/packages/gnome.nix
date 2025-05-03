{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.clipboard-indicator
  ];
}
