#!/bin/sh

# Bootstrap zsh.

# Try to set the default shell to zsh.

if command -v chsh >/dev/null 2>&1
then
  zsh="$(chsh --list-shells | grep 'zsh$' | head -n 1)"

  if [ "$zsh" != "" ]
  then
    chsh -s "$zsh"
  fi
fi
