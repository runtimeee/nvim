#! /bin/bash

# install vim-plug manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install 
yum install -y python3


# install nodejs,yarn, build coc.nvim
yum install -y nodejs npm 
yum install -y neovim python36-neovim

pip3 install pynvim
npm install -g yarn 
cd ~/.vim/plugged/coc.nvim && yarn install 



#install nerd-fonts 
# download from https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro
fc-cache -vf ~/.local/share/fonts


# install ranger 
# https://github.com/ranger/ranger

# install repgrep


