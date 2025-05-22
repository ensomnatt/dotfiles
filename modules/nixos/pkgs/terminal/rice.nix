{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    cmatrix
    cava
    pipes
  ];
}
