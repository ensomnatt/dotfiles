if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/ensomnatt/other/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.cache/hellwal/terminal.sh
source ~/.cache/hellwal/variables.sh
source /home/ensomnatt/other/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls="eza --icons=auto"
alias fzf="fzf --style full --preview 'bat --style=numbers --color=always {}' --bind 'enter:execute(nvim {})'"
