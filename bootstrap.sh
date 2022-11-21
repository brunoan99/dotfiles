#!/bin/bash
# bootstrap.sh installs tools


# Change directory to the parent directory of the bootstrap script.
cd "$(dirname "$0")/.."
# Set the DOTFILES_ROOT to the parent directory of the bootstrap script.
DOTFILES_ROOT=$(pwd -P)

set -e

echo ""

info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
    printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
    echo ""
    exit
}

setup_tools () {
  # by default i"m sourcing for arch packages.
  # in future if u go use another os dismember that
  # to setup_tools_arch...
  info "Installing packages"
  declare -a packages=("curl" "wget" "git" "zsh"
  "archlinux-keyring" "autoconf" "automake" "binutils" "bison"
  "debugedit" "fakeroot" "file" "findutils" "flex" "gawk"
  "gcc" "gettext" "grep" "groff" "gzip" "libtool" "m4" "make"
  "pacman" "patch" "pkgconf" "sed" "sudo" "texinfo" "which")
  for package in "${packages[@]}"
  do
    if ! pacman -Qi $package > /dev/null 2>&1 ; then
      sudo pacman -S $package
      success "$package installed"
    else
          info "$package already installed"
    fi
  done
  success "Packages Success"
}

setup_git () {
  
}

setup_zsh () {
  
}

success "Installation Started"
setup_tools