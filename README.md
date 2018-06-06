# dotfiles

## Structure

- debian, mac - system-specific configurations
- shared - configurations not tied to specific system (aliases, editors etc.)

## Setup

### Fish

$SYSTEM represents the operating system that is being configured. Currently either 'mac' or 'debian'.

- Symlink entire `fish` directory to `~/.config`, usually like

  ```sh
  ln -s $HOME/Workspace/dotfiles/$SYSTEM/fish ~/.config
  ```

- Symlink shared aliases to `conf.d` dir inside `fish` directory, usually like

  ```sh
  ln -s $HOME/Workspace/dotfiles/shared/git-aliases.sh $HOME/Workspace/dotfiles/$SYSTEM/fish/conf.d/aliases.fish
  ```

  This way they will be automatically loaded on fish startup.

- [install fish](https://software.opensuse.org/download.html?project=shells%3Afish%3Arelease%3A2&package=fish)

## TODO

- use fish shell only and move aliases there?
- create a script for convertion between fish and zsh/bash aliases?
