" dein.vim

if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:toml_dir = expand('~/.vim/dein/toml')

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Required
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Load TOML
    let s:color = s:toml_dir . '/color.toml'
    let s:filer = s:toml_dir . '/filer.toml'
    let s:git = s:toml_dir . '/git.toml'
    let s:lsp = s:toml_dir . '/lsp.toml'
    let s:emmet = s:toml_dir . '/emmet.toml'

    " read toml and cache
    call dein#load_toml(s:color, {'lazy': 0})
    call dein#load_toml(s:filer, {'lazy': 0})
    call dein#load_toml(s:git, {'lazy': 0})
    call dein#load_toml(s:lsp, {'lazy': 0})
    call dein#load_toml(s:emmet, {'lazy': 0})

    " end state
    call dein#end()
    call dein#save_state()
endif

"remove
call map(dein#check_clean(), "delete(v:val, 'rf')")

filetype plugin indent on
syntax enable
syntax on
let g:dein#auto_recache = 1

" }}}

