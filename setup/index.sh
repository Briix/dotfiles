#!/bin/bash

install_homebrew() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

install_brewDeps() {
  brew bundle ./setup/Brewfile;
  brew bundle ./setup/Brewfile;
  brew bundle ./setup/Brewfile;
}

install_caskDeps() {
  brew bundle ./setup/Caskfile;
  brew bundle ./setup/Caskfile;
  brew bundle ./setup/Caskfile;
}

install_languages() {
  curl -sSL https://get.rvm.io | bash -s stable;
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer);
}

link_dotfiles() {
  source ./setup/link.sh
}

configure_osx() {
  source ./setup/osx.sh;
  git config --global credential.helper osxkeychain;
}

main() {
  install_homebrew;
  install_brewDeps;
  install_caskDeps;
  install_languages;
  configure_osx;
}

main;
