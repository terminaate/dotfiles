{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rustc
    gcc
    alsa-lib
    vala
    zlib

    pkg-config
    gobject-introspection
    cargo
    cargo-tauri
    nodejs
    at-spi2-atk
    atkmm
    cairo
    gdk-pixbuf
    glib
    gtk3
    gtk4
    harfbuzz
    # librsvg
    libsoup_3
    pango
    webkitgtk_4_1
    openssl
  ];
}
