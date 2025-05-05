{ pkgs, ... }:

let
  oldPkgs =
    import
      (builtins.fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/05bbf675397d5366259409139039af8077d695ce.tar.gz";
        sha256 = "sha256:1r26vjqmzgphfnby5lkfihz6i3y70hq84bpkwd43qjjvgxkcyki0";
      })
      {
        config.allowUnfree = true;
        system = pkgs.system;
      };

  oldWebstorm = oldPkgs.jetbrains.webstorm;

  jetbra = pkgs.callPackage ../../pkgs/jetbra { };

in
{
  home.packages = [
    pkgs.pnpm
    pkgs.gparted
    oldWebstorm
    jetbra
  ];
}
