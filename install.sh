#!/usr/bin/env bash

# install.sh: makes everything happen
# Source: @webpro

# Get current dir (so this script can be run from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/.aliases" ~
ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.bash_prompt" ~
ln -sfv "$DOTFILES_DIR/.bashrc" ~
ln -sfv "$DOTFILES_DIR/.editorconfig" ~
ln -sfv "$DOTFILES_DIR/.exports" ~
ln -sfv "$DOTFILES_DIR/.extra" ~
ln -sfv "$DOTFILES_DIR/.gemrc" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/.hushlogin" ~
ln -sfv "$DOTFILES_DIR/.inputrc" ~
ln -sfv "$DOTFILES_DIR/.path" ~

# Install CLIs
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/golang.sh"
. "$DOTFILES_DIR/install/ruby.sh"
. "$DOTFILES_DIR/install/python.sh"
. "$DOTFILES_DIR/install/node.sh"
. "$DOTFILES_DIR/install/meteor.sh"
. "$DOTFILES_DIR/install/docker.sh"
. "$DOTFILES_DIR/install/heroku_toolbelt.sh"

# Install Apps
. "$DOTFILES_DIR/install/brew-cask.sh"
