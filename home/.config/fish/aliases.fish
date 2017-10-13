# Easier navigation: .., ..., ...., .....
function .. ; cd .. ; end
function ... ; cd ../.. ; end
function .... ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

function grep ; command grep --color=auto $argv ; end

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias a="atom-beta"
alias g="hub"
alias v="nvim"
alias h="history"
alias j="jobs"

alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias dig="dig +nocmd any +multiline +noall +answer"
alias hosts='sudo $EDITOR /etc/hosts'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
