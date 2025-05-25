{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    obsidian
    syncthing
    flatpak
    telegram-desktop
    steam
    pavucontrol
    gnumake
  ];
}
