{ pkgs, ... }:

{
  users.users.terminaate = {
    isNormalUser = true;
    description = "terminaate";
    extraGroups = [
      "networkmanager"
      "wheel"
      "podman"
    ];
    shell = pkgs.zsh;
  };
}
