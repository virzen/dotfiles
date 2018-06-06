# dotfiles

## Structure
- fish - configuration for the loveliest of shells <3
- debian, mac - system-specific configurations
- shared - configurations not tied to specific system or shell (aliases, editor configs etc.)

## Setup

### Fish

- Symlink entire `fish` directory to `~/.config`, usually like
```
ln -s /home/virzen/Workspace/dotfiles/fish ~/.config
```

- Symlink shared aliases to `conf.d` dir inside `fish` directory, usually like
```
ln -s /home/virzen/Workspace/dotfiles/shared/git-aliases.sh /home/virzen/Workspace/dotfiles/fish/conf.d/aliases.fish
```
This way they will be automatically loaded on fish startup.

- [install fish](https://software.opensuse.org/download.html?project=shells%3Afish%3Arelease%3A2&package=fish)

## TODO
- use fish shell only and move aliases there?
