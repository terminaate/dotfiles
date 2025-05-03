{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  # Define open ports if needed
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
