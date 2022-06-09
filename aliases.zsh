# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias hostfile="sudo vi /etc/hosts"

# Vim
alias vimrc="vim $HOME/.vimrc"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias dev="cd $HOME/code"
alias workspace="cd $HOME/Workspace" # Work specific

# Files
alias make1mb="mkfile 1m ./1MB.dat"
alias make5mb="mkfile 5m ./5MB.dat"
alias make10mb="mkfile 10m ./10MB.dat"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"
alias switch-php="brew unlink php && brew link --overwrite --force php" # Latest
alias switch-php80="brew unlink php && brew link --overwrite --force php@8.0"
alias switch-php74="brew unlink php && brew link --overwrite --force php@7.4"
alias switch-php73="brew unlink php && brew link --overwrite --force php@7.3"
alias switch-php71="brew unlink php && brew link --overwrite --force php@7.1" # Yikes

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit '--wip-- [skip-cli]'"

# Apache
alias httpconfig="nano /usr/local/etc/httpd/httpd.conf"
alias httpoff="sudo apachectl -k stop"
alias httpon="sudo apachectl start"

# IP addresses
alias ip="curl https://diagnostic.opendns.com/myip ; echo"
alias localip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias openports="sudo lsof -i | grep LISTEN"
alias blockedports="sudo ipfw list"

# Terraform
alias tf="terraform"
alias tfi="tf init"
alias tfp="tf plan"
alias tfip="tfi && tfp"
alias tfa="tf apply"
alias tfia="tfi && tfa"

# Docker
alias dex="docker exec -it"
alias dps="docker ps"