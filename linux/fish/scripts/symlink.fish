#!/usr/bin/env fish
set file (realpath (status current-filename))
set scriptDir (dirname $file)
set fishDir (dirname $scriptDir)
set debianDir (dirname $fishDir)
set dotfilesDir (dirname $debianDir)
set sharedDir $dotfilesDir/shared

function heading
  echo ''
  echo $argv
end

mkdir ~/.config/fish
mkdir ~/.config/fish/conf.d
mkdir ~/.config/fish/functions

heading 'Functions'
for func in $fishDir/functions/*
  ln -svf $func $HOME/.config/fish/functions
end

heading 'Config'
ln -svf $fishDir/config.fish $HOME/.config/fish


heading 'Shared abbreviations'
for aliases in $sharedDir/*-abbreviations.fish
  ln -sv $aliases $HOME/.config/fish/conf.d
end

heading 'Shared configs'
set sharedConfigs $sharedDir/.editorconfig $sharedDir/.gitconfig
for sharedConfig in $sharedConfigs
  ln -sv $sharedConfig $HOME
end
