{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    tree
    nix-output-monitor
    glow
  ];
}
