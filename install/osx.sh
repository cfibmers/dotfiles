#!/usr/bin/env bash

# Install bash-it
. "$DOTFILES_DIR/install/bashit.sh"

# Install Homebrew & brew-cask

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap git-duet/tap
brew tap homebrew/binary
brew tap homebrew/completions
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap pivotal/tap

brew install brew-cask

# Install brew & brew-cask packages
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/brew.sh"

# Install non-brew software
. "$DOTFILES_DIR/install/ruby.sh"
. "$DOTFILES_DIR/install/spiff.sh"
. "$DOTFILES_DIR/install/shiftit.sh"
. "$DOTFILES_DIR/install/vagrant-plugins.sh"
. "$DOTFILES_DIR/install/neobundle.sh"
