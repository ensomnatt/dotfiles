{ ... }:

{
  # configs
  imports = [
    ../../modules/nixos/pkgs/default.nix
    ../../modules/home-manager/hyprland/default.nix
    ../../modules/home-manager/terminal/default.nix
    ../../modules/home-manager/nvim/default.nix
    ../../modules/home-manager/go.nix
    ../../modules/home-manager/gtk.nix
    ../../modules/home-manager/qt.nix
    ../../modules/home-manager/git.nix
  ];

  # home manager settings
  home = {
    username = "ensomnatt";
    homeDirectory = "/home/ensomnatt";
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;

  # configs which aren't nix files
  home.file = {
    ".config/nvim".source = /home/ensomnatt/nixos/modules/home-manager/nvim;
  };

  # envs
  home.sessionVariables = {
    STEAM_RUNTIME = "1";
  };

  home.sessionPath = [ "$HOME/.local/bin" ];

  # ensomnatt's services
}
