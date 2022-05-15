#! /bin/bash

# install vim-plug manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install 
yum install -y python3
pip3 install pynvim

# install nodejs,yarn, build coc.nvim
yum install -y nodejs npm 
yum install -y neovim python36-neovim

curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
cd ~/.vim/plugged/coc.nvim && yarn install 

#install nerd-fonts 
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

fc-cache -vf ~/.local/share/fonts

