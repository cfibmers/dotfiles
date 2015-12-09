#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DOTFILES_DIR EXTRA_DIR

# prompt for password up front
sudo -v

cp -pR "$DOTFILES_DIR/bash/".[!.]* ~
cp -pR "$DOTFILES_DIR/git/".[!.]* ~
cp -pR "$DOTFILES_DIR/ruby/".[!.]* ~

mkdir -p ~/bin
cp "$DOTFILES_DIR/bin/"* ~/bin/

if [ "$(uname)" == "Darwin" ]; then
    . "$DOTFILES_DIR/install/osx.sh"
    . "$DOTFILES_DIR/osx/defaults.sh"
    . "$DOTFILES_DIR/osx/defaults-terminal.sh"
    . "$DOTFILES_DIR/osx/bundler.sh"
    . "$DOTFILES_DIR/postgres/postgres-launch.sh"
    . "$DOTFILES_DIR/postgres/postgres-user.sh"
fi
