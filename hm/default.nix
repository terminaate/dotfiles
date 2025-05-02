{
  config,
  pkgs,
  inputs,
  ...
}:
{
  home.username = "terminaate";
  home.homeDirectory = "/home/terminaate";

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   "Xft.dpi" = 172;
  # };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    fastfetch
    tree
    nix-output-monitor
    glow
    inputs.zen-browser.packages."${pkgs.system}".beta
    amnezia-vpn
    ayugram-desktop
    gnomeExtensions.blur-my-shell
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.clipboard-indicator
    vesktop
    podman-desktop
    podman-compose
    jetbrains.webstorm
    gparted
    pnpm
    (pkgs.callPackage ../pkgs/youtube-music { })
    (pkgs.callPackage ../pkgs/tlauncher { })
  ];

  programs.fastfetch.settings = {
    gnomeSupport = false;
  };

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "terminaate";
    userEmail = "terminaatecorp@gmail.com";
    extraConfig.credential.helper = "manager";
    extraConfig.credential."https://github.com".username = "terminaate";
    extraConfig.credential.credentialStore = "secretservice";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
      xrandr --output HDMI-1 --primary
    '';

    # set some aliases, feel free to add more or remove some
    shellAliases = {
    };
  };

  programs.zsh = {
    enable = true;
    # enableCompletions = true;
    # autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "robbyrussell";
    };

    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "zsh-users/zsh-history-substring-search"; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
      ];
    };

    shellAliases = {
      nixos-update = "sudo nixos-rebuild switch";
      nixos-clean = "sudo nix-collect-garbage -d";
      docker-compose = "docker compose";
    };
    history.size = 10000;
  };

  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
