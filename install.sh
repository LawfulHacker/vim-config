#!/bin/bash

vim -i NONE -c VundleUpdate -c quitall

cd ~/.vim/bundle/plugins/YouCompleteMe
./install.py --clang-completer --tern-completer

cd ~

echo "Done..."

