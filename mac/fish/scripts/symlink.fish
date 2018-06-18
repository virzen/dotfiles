#!/usr/bin/env fish
set file (realpath (status current-filename))
set scriptDir (dirname $file)
set fishDir (dirname $scriptDir)
set macDir (dirname $fishDir)
set dotfilesDir (dirname $macDir)
set sharedDir $dotfilesDir/shared

echo $file
function heading
  echo ''
  echo $argv
end


heading Functions
for func in $fishDir/functions/*
  ln -svf $func $HOME/.config/fish/functions
end

heading Config
ln -svf $fishDir/config.fish $HOME/.config/fish

heading Shared abbreviations
for aliases in $sharedDir/*-abbreviations.fish
  ln -sv $aliases $HOME/.config/fish/conf.d
end
