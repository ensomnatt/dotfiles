{ ... }: 

{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "opacity 0.9, class:^(rofi)$"
      "rounding 22, class:^(rofi)$"
      "opacity 1.0, class:^(org.telegram.desktop)$"
      "noblur, class:^(org.wezfurlong.wezterm)$"
      "opacity 1.5 0.9 1.5, class:^(org.wezfurlong.wezterm)$"
    ];

    layerrule = [
      "blur,waybar"
    ];
  };
}
