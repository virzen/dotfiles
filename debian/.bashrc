PATH=$PATH:/home/linuxbrew/.linuxbrew/bin:~/.local/bin
PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\ \n"

setxkbmap -option caps:escape

. ~/.bash_defaults

. ~/Workspace/dotfiles/shared/git-aliases.sh
. ~/.aliases
