#!/bin/zsh

echo 'Removing the files to be linked'
[ -e "${HOME}/.zshrc}" ] && rm ${HOME}/.zshrc
[ -e "${HOME}/.vimrc" ] && rm "${HOME}/.vimrc"
[ -e "${HOME}/.gitignore_global" ] && rm "${HOME}/.gitignore_global"
[ -e "${HOME}/.hyper.js" ] && rm "${HOME}/.hyper.js"

echo 'Linking .zshrc file to bin/.zshrc'
ln -s "${HOME}/bin/.zshrc" "${HOME}/.zshrc"

echo 'Linking .vimrc to bin/.vimrc'
ln -s "${HOME}/bin/.vimrc" "${HOME}/.vimrc"

echo 'Linking global gitignore file'
ln -s "${HOME}/bin/.gitignore_global" "${HOME}/.gitignore_global"

echo 'Linking hyper terminal config file'
ln -s "${HOME}/bin/.hyper.js" ${HOME}/.hyper.js

echo 'Creating directories'
mkdir ${HOME}/.npm-packages

# Vim Editor Configurations
echo 'Cleaning up vim configurations if already setup'
rm -rf "${HOME}/.vim" 2> /dev/null

echo "copy necessary files"
mkdir -p "${HOME}/.vim/colors"
cp "${HOME}/bin/vim/colors/cobalt2.vim" "${HOME}/.vim/colors"

echo "setting up vim plugins with Vundle"
mkdir -p "${HOME}/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "${HOME}/bin/vim/plugins.vim" "${HOME}/.vim/plugins.vim"
vim +PluginInstall +qall