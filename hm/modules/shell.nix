{ ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';
    shellAliases = {
      nixos-update = "sudo nixos-rebuild switch";
      nixos-clean = "sudo nix-collect-garbage -d";
      docker-compose = "docker compose";
    };
  };

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
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
}
