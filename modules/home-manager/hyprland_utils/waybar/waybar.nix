{ ... }:

{
  programs.waybar = {
    enable = true;
    style = builtins.readFile ./style.css;
    settings.mainBar = {
      "layer" = "top";
      "position" = "top";
      "height" = 40;
      "reload_style_on_change" = true;
      "margin-left" = 20;
      "margin-right" = 20;

      modules-left = [
        "custom/nixos"
        "hyprland/workspaces"
        "hyprland/language"
      ];

      modules-center = [
        "mpris"
      ];

      modules-right = [
        "pulseaudio"
        "cpu"
        "memory"
        "clock"
      ];

      "custom/nixos" = {
        "format" = " ";
      };

      "hyprland/workspaces" = {
        "format" = "{icon}";
        "format-icons" = {
          "active" = "󰮯";
          "default" = "";
        };
      };

      "hyprland/window" = {
        "format" = "{icon} {title}";
      };

      "hyprland/language" = {
        "format" = "{}";
        "format-en" = "🇺🇸 🦅";
        "format-ru" = "🇷🇺 🐻";
      };

      mpris = {
        "format" = "{artist} - {title}";
        "max-length" = 40;
      };

      pulseaudio = {
        "scroll-step" = 5;
        "format" = "  {volume}%";
        "on-click" = "pavucontrol";
        "max-volume" = 150;
      };

      cpu = {
        "interval" = 1;
        "format" = "  {usage}%";
      };

      memory = {
        "interval" = 1;
        "format" = "  {}%";
      };

      clock = {
        "timezone" = "Europe/Moscow";
        "interval" = 1;
        "format" = "󰸗  {:%H:%M:%S}";
      };
    };
  };
}
