{ ... }:

{
  # configs
  imports = [
    ../../modules/nixos/pkgs/default.nix
    ../../modules/home-manager/hyprland/default.nix
    ../../modules/home-manager/terminal/default.nix
    ../../modules/home-manager/nvim.nix
    ../../modules/home-manager/go.nix
    ../../modules/home-manager/gtk.nix
    ../../modules/home-manager/qt.nix
    ../../modules/home-manager/git.nix
    ../../modules/nixos/config/matugen/default.nix
    ../../modules/home-manager/hyprland_utils/default.nix
  ];

  # home manager settings
  home = {
    username = "ensomnatt";
    homeDirectory = "/home/ensomnatt";
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;

  # envs
  home.sessionVariables = {
    STEAM_RUNTIME = "1";
    http_proxy="socks5h://127.0.0.1:1080";
    https_proxy="socks5h://127.0.0.1:1080";
  };

  home.sessionPath = [ "$HOME/.local/bin" ];

  # ensomnatt's services
}
