{ pkgs, ... }:

{
  home.packages = with pkgs; [
    eza
    zoxide
    vim
    wget
    btop
    ripgrep
    tree
    lazygit
  ];
}
