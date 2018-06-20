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
alias g="git"
alias v="nvim"
alias h="history"
alias j="jobs"
alias o="open"

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

# npm
alias ni='npm install'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nt='npm test'
alias nit='npm install; and npm test'

alias nk='npm link'
alias nr='npm run'
alias ns='npm start'
alias nf='rm -rf node_modules; and npm install'
alias nlg='npm list --global --depth=0'

alias yarnc='rm -rf node_modules; and rm -f yarn.lock; and yarn'
