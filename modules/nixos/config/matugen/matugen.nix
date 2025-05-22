{ inputs, ... }:

{
  imports = [
    inputs.matugen.nixosModules.default
  ];

  programs.matugen = {
    enable = true;
    variant = "dark";
    jsonFormat = "hex";
    palette = "default";

    templates = {
      hyprland = {
        input_path = "./templates/hyprland.conf";
        output_path = "/home/ensomnatt/.config/hypr/colors.conf";
      };

      rofi = {
        input_path = "./templates/rofi.conf";
        output_path = "/home/ensomnatt/.config/rofi/colors.rasi";
      };

      waybar = {
        input_path = "./templates/colors.css";
        output_path = "/home/ensomnatt/waybar/colors.css";
      };

      dunst = {
        input_path = "./templates/dunstrc";
        output_path = "/home/ensomnatt/.config/dunst/dunstrc";
        pre_hook = "pkill dunst";
        post_hook = "dunst &";
      };

      wezterm = {
        input_path = "./templates/wezterm.hbs";
        output_path = "/home/ensomnatt/.config/wezterm/colors.lua";
      };

      wlogout = {
        input_path = "./templates/colors.css";
        output_path = "/home/ensomnatt/.config/wlogout/colors.css";
      };
    };
  };
}
