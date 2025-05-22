{ ... }: 

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
}
