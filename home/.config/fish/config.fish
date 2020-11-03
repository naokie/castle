set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

. "$HOME/.homesick/repos/homeshick/homeshick.fish"
source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"

source ~/.config/fish/variables.fish
source ~/.config/fish/path.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end

# hub
eval (hub alias -s)

# direnv
eval (direnv hook fish)
