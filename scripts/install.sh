#!/bin/bash
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
echo $DOTFILES_DIR
source "$DOTFILES_DIR/variables.sh"


heading() {
  echo -e '\n#=== '$1' ===#'
}


heading "Symlinking configs"
ln -svf "$CONFIGS_DIR/.zprofile"     "$HOME"
ln -svf "$CONFIGS_DIR/.zshrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.gitconfig"    "$HOME"
ln -svf "$CONFIGS_DIR/.gitignore"    "$HOME"
ln -svf "$CONFIGS_DIR/.editorconfig" "$HOME"
ln -svf "$CONFIGS_DIR/.ignore"       "$HOME"
ln -svf "$CONFIGS_DIR/.agignore"     "$HOME"


heading "Symlinking karabiner stuff"
if [[ ! -d $HOME/.config/karabiner ]]; then
  mkdir -v "$HOME/.config/karabiner"
fi
if [[ ! -d $HOME/.config/karabiner ]]; then
  mkdir -v "$HOME/.config/karabiner"
fi
ln -svf "$CONFIGS_DIR/karabiner.json" "$HOME/.config/karabiner"


heading "Symlinking nvim stuff"
if [[ ! -d $HOME/.config/nvim ]]; then
  mkdir -v "$HOME/.config/nvim"
fi
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME"
ln -svf "$CONFIGS_DIR/.vimrc"        "$HOME/.config/nvim/init.vim"
ln -svf "$DOTFILES_DIR/UltiSnips/"      "$HOME/.config/nvim"


heading "Symlinking VSCode configs"
ln -svf "$CONFIGS_DIR/settings.json" "$HOME/Library/Application\ Support/Code/User"
ln -svf "$CONFIGS_DIR/keybindings.json" "$HOME/Library/Application\ Support/Code/User"
ln -svf "$DOTFILES_DIR/vscode-snippets" "$HOME/Library/Application\ Support/Code/User/snippets"


if [[ ! -e $HOME/.local/share/nvim/site/autoload/plug.vim ]]; then
  heading "Installing vim-plug"
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


heading "Symlinking scripts"
if [[ ! -d $DOTFILES_DIR/bin ]]; then
  mkdir "$DOTFILES_DIR/bin"
fi
ln -svf "$SCRIPTS_DIR/dotfiles.sh" "$DOTFILES_DIR/bin/dotfiles"
ln -svf "$SCRIPTS_DIR/git-gone.sh" "$DOTFILES_DIR/bin/git-gone"
ln -svf "$SCRIPTS_DIR/brew-postupgrade.sh" "$DOTFILES_DIR/bin/brew-postupgrade"


heading "Setting zsh as the default shell"
sudo chsh -s $(which zsh)
