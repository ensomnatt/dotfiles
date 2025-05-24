{ pkgs, config, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
  };

  home.file."${config.xdg.configHome}/rofi/colors.rasi".source = ./colors.rasi;
  home.file."${config.xdg.configHome}/rofi/config.rasi".source = ./config.rasi;
}
