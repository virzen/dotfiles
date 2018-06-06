#!/usr/bin/env fish
set file (realpath (status current-filename))
set scriptDir (dirname $file)
set fishDir (dirname $scriptDir)
set debianDir (dirname $fishDir)
set dotfilesDir (dirname $debianDir)
set sharedDir $dotfilesDir/shared

echo $file

echo 'Functions'
for func in $fishDir/functions/*
  ln -svf $func $HOME/.config/fish/functions
end

echo ''
echo 'Config'
ln -svf $fishDir/config.fish $HOME/.config/fish

echo ''
echo 'Shared abbreviations'
for aliases in $sharedDir/*-abbreviations.fish
  ln -sv $aliases $HOME/.config/fish/conf.d
end
