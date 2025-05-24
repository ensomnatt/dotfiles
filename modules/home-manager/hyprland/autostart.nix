{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "swww-daemon"
      "dunst"
      "syncthing"
    ];
  };
}
