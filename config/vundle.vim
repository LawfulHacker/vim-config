set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/bundle/plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'itchyny/landscape.vim'

" Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-expand-region'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'

" Python specific plugins
Plugin 'python-mode/python-mode', { 'for': 'python' }

" Javascript specific plugins
Plugin 'pangloss/vim-javascript', { 'for': 'javascript' }

call vundle#end()

filetype plugin indent on

