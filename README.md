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
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
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

### Install native apps with Homebrew Cask

You could also install native apps with [Homebrew Cask](http://caskroom.io/):

```bash
./cask.sh
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Sublime Text settings

First, install Package Control.

```python
import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

Then,

```bash
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Apps/Sublime/User
```

### Install Atom settings

```bash
cd ~/.atom/
rm -r config.cson
ln -s ~/Dropbox/Apps/Atom/config.cson
```

### Install rbenv

```bash
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```

### Install rbenv plugins

```bash
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone https://github.com/jf/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset
```

### Install nodebrew

```bash
curl -L git.io/nodebrew | perl - setup
```

### Install Vagrant plugins

```bash
vagrant plugin install vagrant-vbguest

```

## Thanks to…

* [Mathias Bynens](http://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
