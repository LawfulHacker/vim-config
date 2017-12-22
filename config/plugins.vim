"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install Plugins
"
call plug#begin('~/.vim/plugged')

" Themes
Plug 'itchyny/landscape.vim'

" Plugins
Plug 'google/vim-maktaba'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-expand-region'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'janko-m/vim-test'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': 'python3.6 ./install.py --clang-completer --tern-completer' }
Plug 'ryanoasis/vim-devicons'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'ruanyl/coverage.vim'

Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/TaskList.vim'
" Plug 'fholgado/minibufexpl.vim'

" Python specific plugins
Plug 'python-mode/python-mode', { 'for': 'python' }

" Javascript specific plugins
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Css
Plug 'ap/vim-css-color'

" Sass
Plug 'gcorne/vim-sass-lint', { 'for': 'sass' }

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

