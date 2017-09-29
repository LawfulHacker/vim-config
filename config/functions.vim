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

