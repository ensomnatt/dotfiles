{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    hyprpicker
    hyprshot
    playerctl
    swww
    matugen
    pywal16
    imagemagick
    zip # for walogram
    file # for walogram
    jq
    xxHash
    findutils
    coreutils
    bc
    dunst
  ];
}
