scriptencoding utf-8
set encoding=utf-8

set rtp+=~/.vim

function! EnsureDirExists (dir)
  if !isdirectory(a:dir)
    if exists("*mkdir")
      call mkdir(a:dir,'p')
    endif
  endif
endfunction

call EnsureDirExists($HOME . '/.vim/autoload')

" Load vim-plug
if empty(glob($HOME . "/.vim/autoload/plug.vim"))
    execute '!curl -fLo ' . $HOME . '/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

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

