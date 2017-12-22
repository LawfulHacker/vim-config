"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"

function! s:CustomizeYcmLocationWindow()
    " Move the window to the top of the screen.
    wincmd K
    " Set the window height to 5.
    5wincmd _
    " Switch back to working window.
    wincmd p
endfunction

autocmd User YcmLocationOpened call s:CustomizeYcmLocationWindow()

nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

