"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
"

set noshowmode
set laststatus=2

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
      \   'readonly': '%{&filetype == "help" ? "" : &readonly ? "" : ""}',
      \   'modified': '%{&filetype == "help" ? "" : &modified ? "" : &modifiable ? "" : "-"}',
      \   'fugitive': '%{exists("*fugitive#head") ? "" . fugitive#head() : ""}'
      \ },
      \ 'component_function': {
      \   'buffer': 'LightlineBuffer',
      \   'fileencoding': 'LightlineFileEncoding',
      \   'fileformat': 'LightlineFileFormat',
      \   'filetype': 'LightlineFileType',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype != "help" && &readonly)',
      \   'modified': '(&filetype != "help" && (&modified || !&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && "" != fugitive#head())'
      \ },
      \ 'separator': { 'left': "", 'right': "" },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineBuffer()
    return bufnr('%')
endfunction

function! LightlineFileEncoding()
    return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineFileFormat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFileType()
    return winwidth(0) > 70 ? (&filetype !=# '' ? (&filetype . ' ' . WebDevIconsGetFileTypeSymbol()) : 'no ft') : ''
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

