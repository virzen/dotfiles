#!/usr/bin/env bash
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#=== Helpers ===#
heading() {
  echo -e '\n#=== '$1' ===#'
}

#=== Actual installation ===#
heading "Pulling the newest version of dotfiles"
[ -d "$DOTFILES_DIR"/.git ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master
if [[ $? -gt 0 ]] && [[ $ENV != "test" ]]; then
  exit 1
fi

if [[ -d "$HOME/homebrew/.git" ]]; then
  heading "Updating homebrew"
  echo "Local homebrew installation detected. Updating..."
  brew update
else
  heading "Installing homebrew"
  echo "Cloning homebrew to $HOME/hombrew..."
  git clone git@github.com:Homebrew/brew.git $HOME/homebrew
  if [[ $? -eq 0 ]]; then
    echo "Brew installation successful. Make sure you have \$HOME/homebrew/bin in your PATH."
  fi
fi
# zsh -> oh my zsh

heading "Creating symlinks"
ln -svf "$DOTFILES_DIR/.zprofile" $HOME
ln -svf "$DOTFILES_DIR/.zshrc" $HOME
ln -svf "$DOTFILES_DIR/.gitconfig" $HOME
ln -svf "$DOTFILES_DIR/.vimrc" $HOME
ln -svf "$DOTFILES_DIR/.editorconfig" $HOME
ln -svf "$DOTFILES_DIR/.tmux.conf" $HOME
ln -svf "$DOTFILES_DIR/.agignore" $HOME
ln -svf "$DOTFILES_DIR/.npmrc" $HOME
ln -svf "$DOTFILES_DIR/bin" $HOME
mkdir -v $HOME/.config/
mkdir -v $HOME/.config/karabiner/
ln -svf "$DOTFILES_DIR/karabiner.json" $HOME/.config/karabiner/
cp -v "$DOTFILES_DIR/com.googlecode.iterm2.plist" $HOME

heading "zsh-nvm"
if [[ -d $HOME/.oh-my-zsh/custom/plugins/zsh-nvm ]]; then
  echo "Existing installation detected. Removing..."
  rm -rf $HOME/.oh-my-zsh/custom/plugins/zsh-nvm
fi
echo "Installing fresh one..."
git clone https://github.com/lukechilds/zsh-nvm $HOME/.oh-my-zsh/custom/plugins/zsh-nvm
