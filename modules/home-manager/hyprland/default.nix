{ config, ... }: 

{
  wayland.windowManager.hyprland.enable = true;
  imports = [
    ./autostart.nix
    ./binds.nix
    ./envs.nix
    ./input.nix
    ./monitors.nix
    ./programs.nix
    ./visual.nix
    ./windowrules.nix
  ];

  home.file."${config.xdg.configHome}/hypr/scripts/wallSelect.sh" = {
    source = ./scripts/wallSelect.sh;
    executable = true;
  };

  home.file."${config.xdg.configHome}/hypr/applets".source = ./applets;
}
