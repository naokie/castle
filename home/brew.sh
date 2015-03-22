#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
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

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Install other useful binaries
brew install ack
brew install ctags
brew install direnv
brew install git
brew install git-flow
brew install go
brew install imagemagick --with-webp
brew install macvim
brew install mercurial
brew install openssl
brew install p7zip
brew install peco
brew install pv
brew install readline
brew install reattach-to-user-namespace
# brew install redis
brew install rename
brew install ssh-copy-id
brew install tig
brew install tmux
brew install tree
brew install webkit2png
brew install z
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
