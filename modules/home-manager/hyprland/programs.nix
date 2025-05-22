{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$terminal" = "wezterm";
    "$logout" = "wlogout";
    "$menu" = "rofi -show drun";
    "$colorpicker" = "hyprpicker -a";
    "$lockscreen" = "hyprlock";
  };
}
