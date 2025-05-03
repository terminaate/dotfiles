{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pnpm
    jetbrains.webstorm
    gparted
  ];
}
