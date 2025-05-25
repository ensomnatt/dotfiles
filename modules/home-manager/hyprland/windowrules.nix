{ ... }: 

{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "opacity 0.9, class:^(rofi)$"
      "rounded 18, class:^(rofi)$"
      "opacity 0.9, class:^(org.wezfurlong.wezterm)$"
    ];
  };
}
