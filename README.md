# naokie’s dotfiles with homeshick

This repo is mostly for my new OSX.

## Setup Start!

### Run software update

```bash
softwareupdate -i -a
```

### Install Xcode and/or "Command Line Tools"

Go to App Store and install Xcode.

```bash
open "http://itunes.apple.com/us/app/xcode/id497799835?ls=1"
```

```bash
sudo xcodebuild -license
xcode-select --install
```

### Install Homebrew and CLI tools

http://brew.sh/

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### Install homeshick

https://github.com/andsens/homeshick

```bash
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
printf '\nsource "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"' >> $HOME/.bashrc
```

```bash
$HOME/.homesick/repos/homeshick/bin/homeshick clone naokie/dotfiles
```

### Install Homebrew formulae

When setting up a new OSX, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```

### Install oh-my-zsh

```bash
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### Change Default Shell to Zsh

```bash
sudo vi /etc/shells
```

Add this line.

```
/usr/local/bin/zsh
```

Change default shell.

```bash
chsh -s /usr/local/bin/zsh
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Atom settings

```bash
cd ~/.atom/
rm -r config.cson
ln -s ~/Dropbox/Apps/Atom/config.cson
```

## Thanks to…

* [Mathias Bynens](http://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
