#!/bin/bash
# Install tmux

. $DOT/utils/print_functions.sh

info "Installing Tmux"

if pacman -Qi tmux > /dev/null 2>&1; then
  info "Tmux already installed"
else
  if sudo pacman -S tmux --noconfirm --quiet > /dev/null 2>&1; then
    success "Tmux Installed"
  else
    fail "Couldn't install Tmux"
  fi
fi

info "Installing Tpm"

if git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm > /dev/null 2>&1; then
  success "Tpm installed"
else
  fail "Couldn't install Tpm"
fi
