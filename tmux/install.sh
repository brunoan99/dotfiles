#!/bin/bash
# Install tmux

. $DOT/utils/print_functions.sh

info "Installing Tmux"

if pacman -Qi tmux > /dev/null 2>&1; then
  info "Tmux already Installed"
else
  if sudo pacman -S tmux --noconfirm --quiet > /dev/null 2>&1; then
    success "Tmux Installed"
  else
    fail "Couldn't install Tmux"
  fi
fi

info "Installing Tpm"

if [ -d $HOME/.tmux/plugins/tpm ]; then
  info "Tpm already Installed"
else
  if git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm > /dev/null 2>&1; then
    success "Tpm Installed"
  else
    fail "Couldn't install Tpm"
  fi
fi

info "Install Tpm Plugins"
sh $HOME/.tmux/plugins/tpm/scripts/install_plugins.sh

success "Tpm and Add-ons Installed"
