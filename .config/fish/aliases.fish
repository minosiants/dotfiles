

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end



alias chmox='chmod +x'

alias where=which # sometimes i forget

# typos
abbr bwre brew
abbr gti git

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)

alias ag='ag --follow --hidden -W (math $COLUMNS - 11)'

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias master="git checkout main ^ /dev/null || git checkout master"



# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
# wget sucks with certificates. Let's keep it simple.
alias wget="curl -O"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

#haskell 
alias gh="stack ghci"

# Git
alias g="git"
alias gi="git"
alias commit="git add . && git commit -S -m"
alias push="git push"
alias pull="git pull"
alias gl="git log --oneline --decorate --color"
alias v="vim"
alias ungz="gunzip -k"

# File size
alias fs="stat -f \"%z bytes\""

# emptytrash written as a function

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-document'

