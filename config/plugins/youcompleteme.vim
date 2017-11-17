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

nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

