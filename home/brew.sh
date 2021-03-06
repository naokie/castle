#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install latest Zsh.
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh
brew install fish

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo vim -a /etc/shells;
  echo '/usr/local/bin/fish' | sudo vim -a /etc/shells;
  chsh -s /usr/local/bin/fish;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
# brew install vim --with-override-system-vi
brew install grep
# brew install openssh

# Install other useful binaries
brew install bat
# brew install ctags
brew install diff-so-fancy
brew install direnv
brew install exa
brew install fd
brew install fnm
brew install fzf
brew install gh
brew install ghq
brew install git
brew install git-friendly/git-friendly/git-friendly
brew install go
# brew install homeshick
# brew install hub
brew install imagemagick --with-webp
brew install neovim
# brew install nvm
brew install p7zip
brew install rbenv
brew install rbenv-default-gems
brew install rbenv-gemset
brew install reattach-to-user-namespace
# brew install redis
brew install rename
brew install ripgrep
brew install sd
brew install ssh-copy-id
brew install tig
# brew install tmux
brew install tree
# brew install watchman
# brew install webkit2png
# brew install yarn
brew install z
# brew install zopfli
brew install zplug
# brew install zsh-autosuggestions
# brew install zsh-history-substring-search
# brew install zsh-syntax-highlighting

# Remove outdated versions from the cellar.
brew cleanup
