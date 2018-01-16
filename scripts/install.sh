#!/bin/bash
#export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DOTFILES_DIR/variables.sh"


heading() {
  echo -e '\n#=== '$1' ===#'
}


heading "Creating directories"
if [[ ! -d $HOME/.config/karabiner ]]; then
  mkdir -v "$HOME/.config/karabiner"
fi
if [[ ! -d $HOME/.config/nvim ]]; then
  mkdir -v "$HOME/.config/nvim"
fi


heading "Symlinking configs"
ln -svf "$CONFIGS_DIR/.zprofile"     "$HOME"
ln -svf "$CONFIGS_DIR/.zshrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.gitconfig"    "$HOME"
ln -svf "$CONFIGS_DIR/.gitignore"    "$HOME"
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME/.config/nvim/init.vim"
ln -svf "$CONFIGS_DIR/.editorconfig" "$HOME"
ln -svf "$CONFIGS_DIR/.ignore"       "$HOME"
ln -svf "$CONFIGS_DIR/.agignore"     "$HOME"
ln -svf "$CONFIGS_DIR/.npmrc"        "$HOME"


heading "Symlinking snippets"
ln -svf "$DOTFILES_DIR/UltiSnips/"    "$HOME/.config/nvim"

if [[ ! -d $HOME/.config/karabiner ]]; then
  mkdir -v "$HOME/.config/karabiner"
fi
ln -svf "$CONFIGS_DIR/karabiner.json" "$HOME/.config/karabiner"


# heading "Installing vim-plug"
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


heading "Symlinking scripts"
ln -svf "$SCRIPTS_DIR/dotfiles.sh" "$DOTFILES_DIR/bin/dotfiles"
ln -svf "$SCRIPTS_DIR/git-gone.sh" "$DOTFILES_DIR/bin/git-gone"
ln -svf "$SCRIPTS_DIR/brew-postupgrade.sh" "$DOTFILES_DIR/bin/brew-postupgrade"
