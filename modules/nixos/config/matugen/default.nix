{ config, ... }:

{
  home.file."${config.xdg.configHome}/matugen/config.toml".source = "./matugen.toml";
}
