#!/bin/bash

echo "source ~/.vim/vimrc.vim" > ~/.vimrc

vim -i NONE -c VundleUpdate -c quitall

cd ~/.vim/bundle/plugins/YouCompleteMe
./install.py

cd ~

echo "Done..."

