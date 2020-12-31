" config.vim
" exchage tab to some spaces
set expandtab

" set indent
set shiftwidth=4

" tab space
set tabstop=4

" enable backspace
set backspace=indent,eol,start

" auto indent
set autoindent

" for indent
set smarttab

" move buffer before save
set hidden

" show column
set number

" enable clipboard
set clipboard=unnamed,autoselect

" seva cursol position
augroup cursolposi
    au BufRead * if line("'\'") > 0 && line("'\'") <= line("$") |
    \ exe "normal g`\"" | endif
augroup END

