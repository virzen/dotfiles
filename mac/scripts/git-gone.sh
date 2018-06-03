#!/bin/sh

if [[ $1 == 'prune' ]]; then
  git gone | xargs git branch -d
else
  git fetch -p && git branch -vv | grep ': gone]' | cut -d ' ' -f 3
fi
