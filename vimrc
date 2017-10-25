scriptencoding utf-8
set encoding=utf-8

set rtp+=~/.vim

source ~/.vim/config/vundle.vim
source ~/.vim/config/functions.vim
source ~/.vim/config/base.vim
source ~/.vim/config/plugins.vim

try
source ~/.vim/user.vim
catch
endtry

try
source .vimrc 
catch
endtry

