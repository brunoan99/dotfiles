#!/bin/bash
# Setup to all my zsh plugins
info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}
success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# zsh-autocomplete
if [ ! "$CONFIG/zsh/zsh-autosuggestions" ]
then 
  git clone https://github.com/zsh-users/zsh-autosuggestions $CONFIG/zsh/zsh-autosuggestions
  success "zsh-autosuggestions installed"
else info "zsh-autosuggestions already installed"
fi

# zsh-syntax-highlighting
if [ ! "$CONFIG/zsh/zsh-syntax-highlighting" ]
then 
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $CONFIG/zsh/zsh-syntax-highlighting
  success "zsh-syntax-highlighting installed"
else info "zsh-syntax-highlighting already installed" 
fi

declare -a packages=("bat" "exa" "starship")
for package in "${packages[@]}"
do
  if ! pacman -Qi $package > /dev/null 2>&1 ; then
    sudo pacman -S $package
    success "$package installed"
  else
    info "$package already installed"
  fi
done