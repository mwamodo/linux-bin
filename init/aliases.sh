# List directories
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# Jump to directories
alias bin="cd ~/bin"
alias code="cd ~/Code"
alias sites="cd ~/Sites"
alias packages="cd ~/Packages"

# Git aliases
alias gs="g status -s"
alias gst="gs"
alias gpo="g push origin"
alias gpom="g push origin main"
alias glog="g log --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

# Programs aliases
alias code="code-insiders"
alias v="vim"
alias vi="vim"
alias hd="trash .zsh_history"
alias h="history | awk '{print $2}' | sort | uniq -c | sort -rn | head -5"

# PHP | Laravel
alias artisan="php artisan"
alias a='artisan'
alias horizon='a horizon'

alias mf="a migrate"
alias ms="a migrate:status"

alias mff="a migrate:fresh"
alias mfs="a migrate:fresh --seed"
alias tinker="a tinker"

alias db:wipe="a db:wipe"
alias db:seed="a db:seed"

alias logs:clear="truncate -s 0 storage/logs/laravel.log"
alias artisan:test='a test --parallel'
alias artisan:enlightn='a enlightn --report'

alias pest="vendor/bin/pest"

alias switch:php8="sudo update-alternatives --set php /usr/bin/php8.0"
alias switch:php7="sudo update-alternatives --set php /usr/bin/php7.4"

# System update & upgrade
alias update="sudo apt update"
alias upgrade="sudo apt upgrade -y"
alias reload="source ~/.zshrc"

# Server aliases
alias dutcredit="cd Sites/dutcredit"
alias dutcredit:backups="scp -r forge@165.227.205.119:/home/forge/dutcredit.co.ke/storage/app/DUT-Credit /home/malik/.backups"
