# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "yous/vanilli.sh"

zplug "zsh-users/zsh-completions", lazy:true
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zaw", use:zaw.zsh
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' hist-find-no-dups yes
zplug "hlissner/zsh-autopair", defer:2

zplug "glidenote/hub-zsh-completion"
zplug "Dannyzen/cf-zsh-autocomplete-plugin"
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug "littleq0903/gcloud-zsh-completion", as:command, use:"src/*"
zplug "b4b4r07/emoji-cli"

zplug "paulirish/git-open", as:plugin
zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:"*darwin*amd64*"

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
# zplug "dracula/zsh", as:theme

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# bindkey
bindkey -e

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

bindkey '^R' zaw-history

# setopt
setopt pushd_minus

setopt no_beep
setopt no_list_beep
setopt no_hist_beep

setopt no_case_glob
setopt extended_glob

setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt append_history

setopt always_last_prompt
setopt auto_menu
setopt globdots

zplug load --verbose

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
