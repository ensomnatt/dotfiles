{ ... }:

{
  programs.zsh = {
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    shellAliases = {
      ls = "eza --icons=auto";
      tp = "ls ~/.tmux/plugins";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos#nixos-pc";
    };

    history = {
      size = 1000000;
      save = 1000000;
      ignorePatterns = [
        "cd .."
	"ls"
      ];
      extended = true;
      ignoreDups = true;
    };
  };
}
