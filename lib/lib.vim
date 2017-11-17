
function! DownloadHttpFile(url, filename)
python3 << EOF
import urllib.request
import vim

url = vim.eval('a:url')
filename = vim.eval('a:filename')

urllib.request.urlretrieve(url, filename)
EOF
endfunction


function! EnsureDirExists (dir)
    if !isdirectory(a:dir)
        call mkdir(a:dir,'p')
    endif
endfunction


" Find a configuration file
function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
       return 'PASTE MODE  '
    endif
    return ''
endfunction


