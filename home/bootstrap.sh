#!/usr/bin/env bash

ghq get dracula/zsh;
ln -s $HOME/src/github.com/dracula/zsh/dracula.zsh-theme $ZSH/themes/dracula.zsh-theme;

ghq get dracula/iterm;

ghq get zsh-users/zaw;

mkdir "~/.nvm";

echo "bundler" > "$(rbenv root)/default-gems";

curl https://sdk.cloud.google.com | zsh;

