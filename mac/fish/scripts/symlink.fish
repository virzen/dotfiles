#!/usr/bin/env fish
set file (realpath (status current-filename))
set scriptDir (dirname $file)
set fishDir (dirname $scriptDir)
set macDir (dirname $fishDir)
set dotfilesDir (dirname $macDir)
set sharedDir $dotfilesDir/shared

function heading
  echo ''
  echo $argv
end

heading Directories
mkdir -v $HOME/.config
mkdir -v $HOME/.config/fish
mkdir -v $HOME/.config/fish/functions
mkdir -v $HOME/.config/fish/conf.d

heading Functions
for func in $fishDir/functions/*
  ln -sv $func $HOME/.config/fish/functions
end

heading Config
ln -sv $fishDir/config.fish $HOME/.config/fish

heading Shared abbreviations
for aliasesFile in $sharedDir/*-abbreviations.fish
  ln -sv $aliasesFile $HOME/.config/fish/conf.d
end

heading Shared configs
set sharedConfigs $sharedDir/.editorconfig $sharedDir/.gitconfig
for sharedConfig in $sharedConfigs
  ln -sv $sharedConfig $HOME
end
