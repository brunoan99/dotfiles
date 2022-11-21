function source_if_exists () {
  if test -r "$1"; then
    source "$1"
  fi
}

autoload -U colors && colors
autoload -Uz compinit && compinit

source_if_exists $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source_if_exists $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source_if_exists $HOME/.config/zsh/wsl/bindkeys.sh
source_if_exists $HOME/.config/zsh/wsl/wsl.sh
source_if_exists $HOME/.config/zsh/wsl/env.sh

alias ls='ls --color=always'
alias update_zsh='source $HOME/.zshrc'

eval "$(starship init zsh)"
