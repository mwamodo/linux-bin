
### Installation

- install git and complete the first-time setups (https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
- install vim
```bash
sudo apt install vim
```
- install zsh and ohmyzsh
- install zshauto completion plugin
``` bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
- clone this repo at you $HOME directory

### Improvements

- write a script to automatically install git and do the first-time setups
    - all git configs (check the current configs)
    ```bash
    git config --global core.excludesfile ~/.gitignore_global
    ```
- install curl
- install zsh and ohmyzsh
- dev environment. 
    - Install nginx, 
    - several versions of php (also install some necessary php exenstions)
    - mysql
    - redis
- install composer and linux-valet and its dependancies
- install node version manager and install node
```bash
nvm install 16.1.0
```
- [install npm packages globally without sudo](https://github.com/sindresorhus/guides/blob/main/npm-global-without-sudo.md). some configurations already exist on exports.sh file. Things that can be done with a script include making the installation directory and running 
```bash
npm config set prefix "${HOME}/.npm-packages"
```
- install yarn
```bash
# make sure the step above is completed successfully
npm install -g yarn
```

### Refactor Sections

1. generate ssh and add them to github
2. Install github gh
```bash
sudo snap install gh
```	
3. Install vscode
```bash
sudo snap install code-insiders --classic
```