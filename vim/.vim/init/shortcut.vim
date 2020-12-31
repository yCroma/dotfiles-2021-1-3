" shortcut.vim
" add new line into normal mode using Enter
noremap <CR> A<CR><ESC>

" auto close
" https://babie.hatenablog.com/entry/20110130/1296348203
" ( ) 
inoremap ( ()<Left>
inoremap <expr> ) ClosePair(')')
" { }
inoremap { {}<Left>
inoremap <expr> } ClosePair('}')
" < >
" inoremap < <><Left>
" inoremap <expr> > ClosePair('>')
" [ ]
inoremap [ []<Left>
inoremap <expr> ] ClosePair(']')
" auto close function
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" " "
inoremap <expr> " CloseQuotation('"')

" ' '
inoremap <expr> ' CloseQuotation("'")
function CloseQuotation(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        " ' ' <Left>
        return a:char . a:char . "\<Left>"
    endif
endf

