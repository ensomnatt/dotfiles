{ ... }:

{
  programs.wlogout = {
    enable = true;
    style = builtins.readFile ./style.css;
    layout = [
      {
        "label" = "shutdown";
        "action" = "poweroff";
      }
      {
        "label" = "reboot";
        "action" = "reboot";
      }
      {
        "label" = "suspend";
        "action" = "systemctl suspend";
      }
    ];
  };
}
