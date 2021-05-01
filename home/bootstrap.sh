#!/usr/bin/env bash

ghq get dracula/iterm;

# perlbrew
# curl -L https://install.perlbrew.pl | bash;

# nvm
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# gcloud
curl https://sdk.cloud.google.com | zsh;

# neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh "$HOME/.cache/dein"

pip3 install neovim

# visual studio code
ln -s /Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code $HOME/bin/code

# fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# deno
curl -L https://deno.land/x/install/install.sh | sh

# rust
curl https://sh.rustup.rs -sSf | sh

# flutter
# https://flutter.io/docs/get-started/install/macos
