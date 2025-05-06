{
  ...
}:
{
  imports = [
    ./packages
    ./modules
  ];

  home.username = "terminaate";
  home.homeDirectory = "/home/terminaate";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
