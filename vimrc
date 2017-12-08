set nocompatible

filetype off
filetype plugin indent on

scriptencoding utf-8
set encoding=utf-8

set rtp+=~/.vim

" Ensure that we have python 3 support as our lib needs it
if !has('python3')
    echo 'This configuration requires that vim be configured with python 3 support'
    exit
endif

source ~/.vim/lib/lib.vim


" Load vim-plug
call EnsureDirExists($HOME . '/.vim/autoload')
if empty(glob($HOME . '/.vim/autoload/plug.vim'))
    call DownloadHttpFile('https://raw.github.com/junegunn/vim-plug/master/plug.vim', $HOME . '/.vim/autoload/plug.vim')
endif

" Load configuration
source ~/.vim/config/plugins.vim
source ~/.vim/config/base.vim
source ~/.vim/config/functions.vim
source ~/.vim/config/plugin-config.vim

try
source ~/.vim/user.vim
catch
endtry

try
source .vimrc
catch
endtry

