#!/bin/bash

echo "Installing nvim..."
echo "--- NVIM INSTALL LOG ---" >> logfile
apt install nvim >> logfile

echo "Installing vim-plug"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Configuring files..."
mkdir ~/.config/nvim/

cp init.vim ~/.config/nvim/
cp coc-settings.json ~/.config/nvim/
cp .tmux.conf ~/
