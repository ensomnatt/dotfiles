{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    hyprpicker
    hyprshot
    playerctl
    swww
  ];
}
