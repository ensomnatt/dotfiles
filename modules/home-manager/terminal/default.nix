{ ... }:

{
  imports = [
    ./zsh.nix
    ./starship.nix
    ./tmux.nix
  ];

  programs = {
    wezterm = {
      enable = true;
      extraConfig = builtins.readFile ./wezterm.lua;
    };
    zsh.enable = true;
    starship.enable = true;
    tmux.enable = true;
  };
}
