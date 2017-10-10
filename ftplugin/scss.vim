let g:ScssBaseFontSize = 16.0

function! g:ConvertPixelToRem()
    let l:currentLine = line('.')
    let l:wordUnderCursor = tolower(expand("<cword>"))
    if l:wordUnderCursor =~ '\dpx'
        let l:strValue = substitute(l:wordUnderCursor, "px", "", "")
        let l:remValue = string(l:strValue / g:ScssBaseFontSize) . "rem"
        let l:strCurrentLine = getline(l:currentLine)
        let l:newCurrentLine = substitute(l:strCurrentLine, l:wordUnderCursor, l:remValue, "")
        call setline(l:currentLine, l:newCurrentLine)
    endif
endfunction

map <Leader>cu :call g:ConvertPixelToRem()<CR>

