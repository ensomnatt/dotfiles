{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    obsidian
    syncthing
    flatpak
    telegram-desktop
    nekoray
    steam
    pavucontrol
    gnumake
  ];
}
