{ pkgs, ... }:

{
  programs.tmux = {
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "screen-256color";
    extraConfig = ''
      set -g allow-passthrough on
      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM
      set -ga terminal-overrides ",xterm-256color:Tc"

      unbind r
      bind r source-file ~/.tmux.conf

      bind-key h select-pane -L
      bind-key j select-pane -D
      bind-key k select-pane -U
      bind-key l select-pane -R

      set -g status on
      set -g status-interval 5
      set -g status-justify centre
      set -g status-style bg=default,fg=default

      set -g status-left-length 25
      set -g status-left "#[bold]#(whoami)@#H #[fg=colour8]"

      set -g status-right-length 40
      set -g status-right "#[bold]%H:%M %d-%m-%Y #[fg=colour4]#S"

      setw -g window-status-format "#[fg=colour7] #I:#W "
      setw -g window-status-current-format "#[bold,fg=colour2]#I:#W 
    '';
  };
}
