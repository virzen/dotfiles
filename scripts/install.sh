#!/bin/bash
#export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DOTFILES_DIR/variables.sh"


heading() {
  echo -e '\n#=== '$1' ===#'
}


heading "Pulling the newest version of dotfiles"
[ -d "$DOTFILES_DIR"/.git ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
if [[ $? -gt 0 ]] && [[ $ENV != "test" ]]; then
  exit 1
fi


if [[ ! -d $HOME/.config/karabiner ]]; then
  md -v "$HOME/.config/karabiner"
fi
if [[ ! -d $HOME/.config/nvim ]]; then
  md -v "$HOME/.config/nvim"
fi

heading "Symlinking configs"
ln -svf "$CONFIGS_DIR/.zprofile"     "$HOME"
ln -svf "$CONFIGS_DIR/.zshrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.gitconfig"    "$HOME"
ln -svf "$CONFIGS_DIR/.gitignore"    "$HOME"
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME/.config/nvim/init.vim"
ln -svf "$CONFIGS_DIR/.editorconfig" "$HOME"
ln -svf "$CONFIGS_DIR/.tmux.conf"    "$HOME"
ln -svf "$CONFIGS_DIR/.agignore"     "$HOME"
ln -svf "$CONFIGS_DIR/.npmrc"        "$HOME"

if [[ ! -d $HOME/.config/karabiner ]]; then
  md -v "$HOME/.config/karabiner"
fi
ln -svf "$CONFIGS_DIR/karabiner.json" "$HOME/.config/karabiner"


heading "Symlinking scripts"
ln -svf "$SCRIPTS_DIR/dotfiles.sh" "$DOTFILES_DIR/bin/dotfiles"
