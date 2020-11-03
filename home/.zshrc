[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# bindkey
bindkey -e

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

bindkey '^R' zaw-history
bindkey '^X^B' zaw-git-branches

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

# zplug
source ~/.zplugrc
zplug load --verbose

# homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh";

# z
. "$(brew --prefix)/etc/profile.d/z.sh";

# hub
if which hub &> /dev/null; then
  eval "$(hub alias -s)";
fi;

# direnv
if which direnv &> /dev/null; then
  eval "$(direnv hook zsh)";
fi;

# nvm
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";

# rbenv
if which rbenv &> /dev/null; then
  eval "$(rbenv init -)";
fi;

# prelbrew
[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && source "$HOME/perl5/perlbrew/etc/bashrc";

# interactively cd ghq list
function peco-src() {
	local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER");
	if [ -n "$selected_dir" ]; then
		BUFFER="cd ${selected_dir}";
		zle accept-line;
	fi;
	zle clear-screen;
}
zle -N peco-src;
bindkey '^]' peco-src;

# interactively gulp task
function fzf-gulp() {
    local task=$(gulp --tasks-simple | fzf);
    if [ -n "$task" ]; then
        BUFFER="gulp ${task}";
        zle accept-line;
    fi;
    # zle clear-screen;
}
zle -N fzf-gulp;
bindkey '^\' fzf-gulp;

# pip zsh completion
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip3

# git friendly completion
fpath=($(brew --prefix)/share/zsh/functions $fpath)
autoload -Uz _git && _git
compdef __git_branch_names branch

# fnm
export PATH=$HOME/.fnm:$PATH
eval `fnm env`
