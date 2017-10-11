#!/usr/bin/env bash

ghq get dracula/iterm;

mkdir .nvm;

curl -L https://install.perlbrew.pl | bash

echo "bundler" > "$(rbenv root)/default-gems";

curl https://sdk.cloud.google.com | zsh;

curl -s "https://get.sdkman.io" | bash;

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh "$HOME/.cache/dein"

pip3 install neovim

ln -s /Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code $HOME/bin/code
