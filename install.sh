#!/usr/bin/env bash
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#=== Helpers ===#
heading() {
  echo -e '\n#=== '$1'===#'
}

command_exists() {
  command -v "$1" >/dev/null 2>&1 || { echo >&2 "$1 not installed."; exit 1; }
}

#=== Actual installation ===#
heading "Pulling the newest version of dotfiles"
[ -d "$DOTFILES_DIR"/.git ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
heading "Installing missing utilities."

#=== Symlinks ===#
heading "Creating symlinks"
ln -svf "$DOTFILES_DIR/.zshrc" ~
ln -svf "$DOTFILES_DIR/.gitconfig" ~
