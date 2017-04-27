# zplug
source ~/.zplug/init.zsh

zplug "yous/vanilli.sh"

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zaw", use:zaw.zsh
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' hist-find-no-dups yes
zplug "hlissner/zsh-autopair", defer:2

zplug "glidenote/hub-zsh-completion"
zplug "Dannyzen/cf-zsh-autocomplete-plugin"
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug "littleq0903/gcloud-zsh-completion", as:command, use:"src/*"

zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:"*darwin*amd64*"

# zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "dracula/zsh", as:theme

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

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

zplug load --verbose

# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/google-cloud-sdk/path.zsh.inc ]; then source ~/google-cloud-sdk/path.zsh.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f ~/google-cloud-sdk/completion.zsh.inc ]; then source ~/google-cloud-sdk/completion.zsh.inc; fi
