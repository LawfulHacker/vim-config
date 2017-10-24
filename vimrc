scriptencoding utf-8
set encoding=utf-8

set rtp+=~/.vim

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Droid_Sans_Mono_Slashed_for_Pow:h11:cANSI:qDRAFT
  endif
endif

source ~/.vim/config/vundle.vim
source ~/.vim/config/functions.vim
source ~/.vim/config/base.vim
source ~/.vim/config/plugins.vim

try
source ~/.vim/user.vim
catch
endtry

