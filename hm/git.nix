{ ... }:

{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "terminaate";
    userEmail = "terminaatecorp@gmail.com";
    extraConfig.credential.helper = "manager";
    extraConfig.credential."https://github.com".username = "terminaate";
    extraConfig.credential.credentialStore = "secretservice";
  };
}
