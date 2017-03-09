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

heading "Installing missing utilities."
# TODO: Install often used programs
# brew
# zsh -> oh my zsh
# nvm -> node

heading "Creating symlinks"
ln -svf "$DOTFILES_DIR/.zprofile" ~
ln -svf "$DOTFILES_DIR/.zshrc" ~
ln -svf "$DOTFILES_DIR/.gitconfig" ~
ln -svf "$DOTFILES_DIR/.vimrc" ~
ln -svf "$DOTFILES_DIR/.editorconfig" ~
ln -svf "$DOTFILES_DIR/.tmux.conf" ~
ln -svf "$DOTFILES_DIR/.agignore" ~
ln -svf "$DOTFILES_DIR/.npmrc" ~
ln -svf "$DOTFILES_DIR/bin" ~
mkdir -v ~/.config/
mkdir -v ~/.config/karabiner/
ln -svf "$DOTFILES_DIR/karabiner.json" ~/.config/karabiner/
cp -v "$DOTFILES_DIR/com.googlecode.iterm2.plist" ~

heading "zsh-nvm"
if [[ -d ~/.oh-my-zsh/custom/plugins/zsh-nvm ]]; then
  echo "Existing installation detected. Removing..."
  rm -rf ~/.oh-my-zsh/custom/plugins/zsh-nvm
fi
echo "Installing fresh one..."
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
