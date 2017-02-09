fpath=(/usr/local/share/zsh/site-functions $fpath)

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zaw", use:zaw.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "hlissner/zsh-autopair", defer:2

zplug "Dannyzen/cf-zsh-autocomplete-plugin"
zplug "lukechilds/zsh-better-npm-completion", defer:2

# zplug "tweekmonster/nanofish", as:theme
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
# zplug "dracula/zsh", as:theme

zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "peco/peco", as:command, from:gh-r
zplug "rupa/z", use:z.sh

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

zplug load --verbose
