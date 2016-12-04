#!/usr/bin/env bash
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#=== Helpers ===#
command_exists() {
  command -v "$1" >/dev/null 2>&1 || { echo >&2 "$1 not installed."; exit 1; }
}

#=== Dotfiles repo update ===#
[ -d "$DOTFILES_DIR"/.git ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

#=== Symlinks ===#
ln -svf "$DOTFILES_DIR/.zshrc" ~
ln -svf "$DOTFILES_DIR/.gitconfig" ~
