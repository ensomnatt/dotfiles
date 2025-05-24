{ ... }:

{
  programs.waybar = {
    enable = true;
    settings = {
      style = builtins.readFile ./style.css;

      mainBar = {
        "layer" = "top";
        "position" = "top";
        "height" = 40;
        "reload_style_on_change" = true;

        modules-left = [
          "custom/nixos"
          "hyprland/workspaces"
          "hyprland/window"
          "hyprland/language"
        ];

        modules-center = [
          "mpris"
        ];

        modules-right = [
          "group/volume"
          "cpu"
          "memory"
          "clock"
        ];
      };

      "custom/nixos" = {
        "format" = "";
      };

      "hyprland/workspaces" = {
        "format" = "{icon}";
        "format-icons" = {
          "active" = "󰮯";
          "default" = "";
        };
      };

      "hyprland/window" = {
        "format" = "{title}";
      };

      "hyprland/language" = {
        "format" = "{}";
        "format-en" = "🇺🇸🦅";
        "format-ru" = "🇷🇺🐻";
      };

      "mpris" = {
        "format" = "{artist} - {title}";
      };

      "group/volume" = {
        "orientation" = "horizontal";
        "modules" = [
          "custom/volume"
          "pulseaudio#input"
          "pulseaudio#output"
        ];
        "drawer" = {
          "transition-duration" = 500;
          "transition-left-to-right" = false;
        };
      };

      "custom/volume" = {
        "format" = "";
      };

      "pulseaudio#input" = {
        "format" = "󰍬 {volume}%";
        "format-muted" = "󰍭";
        "scroll-step" = 5;
        "on-click" = "pavucontrol";
      };

      "pulseaudio#output" = {
        "format" = "󰋋 {volume}%";
        "format-muted" = "󰟎";
        "scroll-step" = 5;
        "on-click" = "pavucontrol";
      };
    };

    "cpu" = {
      "interval" = 1;
      "format" = " {}%";
    };

    "memory" = {
      "interval" = 1;
      "format" = " {}%";
    };

    "clock" = {
      "timezone" = "Europe/Moscow";
      "interval" = 1;
      "format" = "󰸗 {%a %d %H:%M:%S}";
    };
  };
}
