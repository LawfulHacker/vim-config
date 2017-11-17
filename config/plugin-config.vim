source ~/.vim/config/plugins/ctrlp.vim
source ~/.vim/config/plugins/lightline.vim
source ~/.vim/config/plugins/syntastic.vim
source ~/.vim/config/plugins/youcompleteme.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"

map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
"

set diffopt+=vertical

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python Mode
"

let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 0

let g:pymode_python = 'python3'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript VIM
"

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


map <C-T> :TaskList<CR>
map <C-G> :TlistToggle<CR>

