{ ... }: 

{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      "opacity 1.0 1.0, class:^(firefox)$"
      "opacity 1.0 override, title: (.*YouTube.*)"
      "opacity 0.9, class:^(org.wezfurlong.wezterm)$"
    ];
  };
}
