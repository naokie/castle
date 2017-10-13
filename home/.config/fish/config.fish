source ~/.config/fish/variables.fish
source ~/.config/fish/path.fish
source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end
