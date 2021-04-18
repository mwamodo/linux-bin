# List directories
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# Jump to directories
alias sites="cd ~/Sites"
alias sites:static="cd ~/Code/Sites"
alias code="cd ~/Code"
alias bin="cd ~/bin"

# Git aliases
alias gs="git status -s"
alias gst="gs"
alias gpo="git push origin"
alias gpom="git push origin main"
alias glog="git log --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

# Programs aliases
alias code="code-insiders"
alias v="vim"
alias vi="vim"
alias hd="trash .zsh_history"
alias h="history | awk '{print $2}' | sort | uniq -c | sort -rn | head -5"

# PHP | Laravel
alias artisan="php artisan"
alias a='artisan'
alias horizon='artisan horizon'

alias mf="artisan migrate"
alias ms="artisan migrate:status"

alias mff="artisan migrate:fresh"
alias mfs="artisan migrate:fresh --seed"
alias tinker="artisan tinker"

alias db:wipe="artisan db:wipe"
alias db:seed="artisan db:seed"

alias logs:clear="truncate -s 0 storage/logs/laravel.log"
alias artisan:test='artisan test --parallel'

alias reload="source ~/.zshrc"

# Server aliases
alias dutcredit:backups="scp -r forge@165.227.205.119:/home/forge/dutcredit.co.ke/storage/app/DUT-Credit /home/malik/.backups"