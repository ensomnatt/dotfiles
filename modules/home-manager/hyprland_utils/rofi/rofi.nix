{ pkgs, config, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = ./config.rasi;
  };

  home.file."${config.xdg.configHome}/rofi/colors.rasi".source = ./colors.rasi;
}
