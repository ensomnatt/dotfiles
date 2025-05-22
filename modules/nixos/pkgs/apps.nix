{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    obsidian
    syncthing
    flatpak
    nekoray
    telegram-desktop
    steam
    pavucontrol
  ];
}
