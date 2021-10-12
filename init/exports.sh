# npm global path to prevent install npm with sudo
export NPM_PACKAGES="${HOME}/.npm-packages"

# Insert globally installed npm packages to path and local bin
export PATH="$NPM_PACKAGES/bin:${HOME}/.local/bin:$PATH"

# yarn global as set in the installation script
# export PATH="$PATH:`yarn --offline global bin`"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export DATE=`date +%d-%m-%Y`

# insert bin/scripts directory to path
export PATH=$PATH:$HOME/bin/scripts

# php
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export XDEBUG_MODE=coverage

# go
export PATH="$HOME/go/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export JAVA_HOME=$HOME/.local/share/JetBrains/Toolbox/apps/AndroidStudio/ch-0/203.7678000/jre
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/apps/AndroidStudio/ch-0/203.7678000/jre/bin

export GTI_SPEED=2000

# RUBY
export GEM_HOME=~/.ruby/
export PATH="$PATH:~/.ruby/bin"

# Load nvm automatically when a dir has .nvmrc file

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

commit () {
    commitMessage="$1"

    if [ "$commitMessage" = "" ]
    then
        commitMessage="WIP"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
}

commit:push () {


    commitMessage="$1"
    gitCurrentBranch=$(git branch --show-current)

    if [ "$commitMessage" = "" ]
    then
        commitMessage="WIP"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
    eval "git push origin ${gitCurrentBranch}"

}
