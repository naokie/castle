function subl --description 'Open Sublime Text'
  if test -d "/Applications/Sublime Text.app"
    "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "/Applications/Sublime Text 2.app"
    "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" $argv
  else if test -x "/opt/sublime_text/sublime_text"
    "/opt/sublime_text/sublime_text" $argv
  else if test -x "/opt/sublime_text_3/sublime_text"
    "/opt/sublime_text_3/sublime_text" $argv
  else
    echo "No Sublime Text installation found"
  end
end

function md --wraps mkdir -d "Create a directory and cd into it"
  command mkdir -p $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end

function gz --d "Get the gzipped size"
  echo "orig size    (bytes): "
  cat "$argv[1]" | wc -c
  echo "gzipped size (bytes): "
  gzip -c "$argv[1]" | wc -c
end

# `shellswitch [bash|zsh|fish]`
function shellswitch
  chsh -s (brew --prefix)/bin/$argv
end

function vsc
  env VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCodeInsiders" --args $argv
end

function emptytrash -d 'Empty the Trash on all mounted volumes and the main HDD. then clear the useless sleepimage'
  sudo rm -rfv /Volumes/*/.Trashes
  sudo rm -v /private/var/vm/sleepimage
  grm -rf ~/.Trash/*
end

function path --description "Print each PATH entry on a separate line"
  for val in $PATH
    echo $val
  end
end
