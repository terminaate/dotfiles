{
  pkgs,
  ...
}:
{
  # Enabling gsconnect
  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };
}
