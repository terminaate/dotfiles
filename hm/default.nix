{
  ...
}:
{
  imports = [
    ./packages
    ./git.nix
    ./shell.nix
  ];

  home.username = "terminaate";
  home.homeDirectory = "/home/terminaate";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
