{ pkgs, ... }:

{
  home.packages = [
    pkgs.pnpm
    pkgs.gparted
  ];

  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      dbaeumer.vscode-eslint
      k--kato.intellij-idea-keybindings
      bbenoist.nix
      jnoortheen.nix-ide
      christian-kohler.npm-intellisense
      christian-kohler.path-intellisense
      esbenp.prettier-vscode
    ];
  };
}
