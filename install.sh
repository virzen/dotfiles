#!/usr/bin/env bash
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# update .dotfiles repo first
[ -d "$DOTFILES_DIR"/.git ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# install zsh

# make zsh default shell
# chsh -s $(which zsh)

# symlinks
# s - soft link
# v - verbose
# f - force (overwrite existing files)
ln -svf "$DOTFILES_DIR/.bash_aliases" ~
ln -svf "$DOTFILES_DIR/.zshrc" ~
ln -svf "$DOTFILES_DIR/.hyperterm.js" ~

# install nvm
# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
