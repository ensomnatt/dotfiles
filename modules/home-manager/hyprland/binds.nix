{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";

    bind = [
      # programs
      "$mainMod, return, exec, $terminal"
      "$mainMod, escape, exec, $logout"
      "$mainMod, D, exec, $menu"
      "$mainMod, C, exec, $colorpicker"
      "$mainMod, P, exec, $lockscreen"

      # scripts
      "$mainMod, W, exec, ~/.config/hypr/scripts/wallSelect.sh"

      # movement
      "$mainMod, H, movefocus, l"
      "$mainMod, L, movefocus, r"
      "$mainMod, K, movefocus, u"
      "$mainMod, j, movefocus, d"

      # screenshots
      "$mainMod, X, exec, hyprshot -m region -o ~/pictures/screenshots -c"
      "$mainMod, B, exec, hyprshot -m output -o ~/pictures/screenshots -c"

      # hyprland actions
      "$mainMod SHIFT, M, exit"
      "$mainMod, R, exec, hyprctl reload"
      "$mainMod, G, fullscreen"
      "$mainMod, F, togglefloating"
      "$mainMod, Q, killactive"

      # resize
      "$mainMod SHIFT, H, resizeactive, -15 0"
      "$mainMod SHIFT, L, resizeactive, 15 0"
      "$mainMod SHIFT, K, resizeactive, 0 -15"
      "$mainMod SHIFT, J, resizeactive, 0 15"

      # workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    bindl = [
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];
  };
}
