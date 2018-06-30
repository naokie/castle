#!/usr/bin/env bash

# Install native apps.

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# brew cask install airserver
brew cask install alfred
# brew cask install android-file-transfer
# brew cask install appzapper
# brew cask install arduino
# brew cask install asepsis
brew cask install atom
brew cask install bartender
# brew cask install bittorrent-sync
brew cask install box-sync
brew cask install charles
# brew cask install coda
# brew cask install codekit
brew cask install coteditor
brew cask install dash
brew cask install dropbox
# brew cask install espresso
brew cask install evernote
# brew cask install fantastical
# brew cask install filezilla
# brew cask install firefox-aurora
# brew cask install genymotion
# brew cask install github
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install google-japanese-ime
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2
brew cask install kaleidoscope
brew cask install karabiner
# brew cask install livereload
brew cask install ngrok
brew cask install onepassword
# brew cask install onyx
# brew cask install opera-next
# brew cask install parallels
brew cask install path-finder
# brew cask install reflector
# brew cask install shortcat
# brew cask install sizeup
# brew cask install slack
# brew cask install skype
brew cask install sourcetree
brew cask install sublime-text3
brew cask install the-unarchiver
# brew cask install thunderbird
# brew cask install totalfinder
brew cask install tower
# brew cask install transmission
brew cask install transmit
# brew cask install vagrant
# brew cask install virtualbox
brew cask install vlc

# Install quick look plugins.
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install suspicious-package
brew cask install webpquicklook

brew cleanup

qlmanage -r
brew cask alfred link
