#!/bin/bash
# Install neovim

. $DOT/utils/print_functions.sh

info "Installing Neovim"

if pacman -Qi neovim > /dev/null 2>&1; then
  info "Neovim already installed"
else
  if sudo pacman -S neovim --noconfirm --quiet > /dev/null 2>&1; then
    success "Neovim Installed"
  else
    fail "Couldn't install Neovim"
  fi
fi
