#!/bin/sh

if [[ $1 == 'prune' ]]; then
  git gone | xargs git branch -d
  exit 0
fi

git fetch -p 1>/dev/null
git branch -vv | ag ': gone]' | cut -d ' ' -f 3
