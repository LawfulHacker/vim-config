"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"

map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
"

set noshowmode
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'buffer' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⛔ ":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"✎ ":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_function': {
      \   'buffer': 'LightlineBuffer',
      \   'fileencoding': 'LightlineFileEncoding',
      \   'fileformat': 'LightlineFileFormat',
      \   'filetype': 'LightlineFileType',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

function! LightlineBuffer()
    return bufnr('%')
endfunction

function! LightlineFileEncoding()
    return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineFileFormat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileType()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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

nnoremap <leader>jd :YcmCompleter GoTo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction

autocmd FileType javascript let b:syntastic_javascript_jscs_args =
    \ get(g:, 'syntastic_javascript_jscs_args', '') .
    \ FindConfig('-c', '.jscsrc', expand('<afile>:p:h', 1))

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

