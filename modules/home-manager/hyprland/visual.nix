{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 7;
      gaps_out = 20;

      border_size = 2;

      layout = "dwindle";
      resize_on_border = true;
      allow_tearing = true;
      gaps_workspaces = 0;
      extend_border_grab_area = 0;
      hover_icon_on_border = false;
    };

    decoration = {
      rounding = 10;

      active_opacity = 0.9;
      inactive_opacity = 0.85;
      fullscreen_opacity = 1;

      layerrule = [
        "blur,waybar"
      ];

      blur = {
        enabled = true;
        new_optimizations = true;
        xray = true;
        size = 2;
        passes = 5;

        ignore_opacity = true;

        popups = true;
      };

      shadow = {
        enabled = false;
      };
    };

    animations = {
      enabled = true;

      bezier = [
        "myBezier, 0.05, 0.9, 0.1, 1.05"
      ];

      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      force_default_wallpaper = -1;
      disable_hyprland_logo = true;
    };
  };

  # matugen
  wayland.windowManager.hyprland.extraConfig = ''
    source = $HOME/.config/hypr/colors.conf

    general {
      col.active_border = $primary
      col.inactive_border = $on_surface
    }
  '';
}
