{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "us, ru";
      kb_options = "grp:win_space_toggle";

      follow_mouse = 1;

      sensitivity = 0;
    };

    gestures = {
      workspace_swipe = false;
    };
  };
}
